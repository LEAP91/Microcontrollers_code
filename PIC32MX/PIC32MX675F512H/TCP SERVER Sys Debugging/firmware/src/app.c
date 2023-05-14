
#include "app.h"
#include "system/debug/sys_debug.h"
#include "configuration.h"

APP_DATA appData;

#define UART_CONSOLE_NUM_BYTES_READ 10
#define UART_CONSOLE_READ_BUFFER_SIZE 10
#define SERVER_PORT 9760

uint8_t uart_console_read_buffer[UART_CONSOLE_READ_BUFFER_SIZE];

void APP_Initialize(void)
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
}

void APP_Tasks(void)
{
    SYS_STATUS tcpipStat;
    const char *netName, *netBiosName;
    static IPV4_ADDR dwLastIP[2] = {{-1}, {-1}};
    IPV4_ADDR ipAddr;
    int i, nNets;
    TCPIP_NET_HANDLE netH;

    /* Check the application's current state. */

    switch (appData.state)
    {
    /* Application's initial state. */
    case APP_STATE_WAIT_UART_CONSOLE_CONFIGURED:

    {
        // RED_ON;
        if (SYS_CONSOLE_Status(SYS_CONSOLE_INDEX_0) == SYS_STATUS_READY)
        {
            appData.state = APP_STATE_GET_CONSOLE_HANDLE;
        }
        break;
    }

    case APP_STATE_GET_CONSOLE_HANDLE:
    {

        /* Get handles to both the UART console instances */
        appData.consoleHandle = SYS_CONSOLE_HandleGet(SYS_CONSOLE_INDEX_0);

        if (appData.consoleHandle != SYS_CONSOLE_HANDLE_INVALID)
        {
            SYS_CONSOLE_MESSAGE("Sys console ready!\n\r");
            appData.state = APP_TCPIP_WAIT_INIT;
        }
        else
        {
            appData.state = APP_STATE_ERROR;
        }
        break;
    }

    /* TODO: implement your application state machine.*/
    case APP_TCPIP_WAIT_INIT:
    {

        tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
        if (tcpipStat < 0)
        {
            // SYS_CONSOLE_MESSAGE("Not ready\n\r");
        }
        else if (tcpipStat == SYS_STATUS_READY)
        {
            SYS_CONSOLE_MESSAGE("tcp stat ready!\n\r");
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; i++)
            {

                netH = TCPIP_STACK_IndexToNet(i);
                netName = TCPIP_STACK_NetNameGet(netH);
                netBiosName = TCPIP_STACK_NetBIOSName(netH);

#if defined(TCPIP_STACK_USE_NBNS)
                SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
                SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif                             // defined(TCPIP_STACK_USE_NBNS)
                (void)netName;     // avoid compiler warning
                (void)netBiosName; // if SYS_CONSOLE_PRINT is null macro
            }

            appData.state = APP_TCPIP_WAIT_FOR_IP;
        }
        break;
    }
    case APP_TCPIP_WAIT_FOR_IP:

        // if the IP address of an interface has changed
        // display the new value on the system console

        nNets = TCPIP_STACK_NumberOfNetworksGet();

        for (i = 0; i < nNets; i++)
        {
            netH = TCPIP_STACK_IndexToNet(i);
            if (!TCPIP_STACK_NetIsReady(netH))
            {

                return; // interface not ready yet!
            }

            ipAddr.Val = TCPIP_STACK_NetAddress(netH);
            if (dwLastIP[i].Val != ipAddr.Val)
            {
                dwLastIP[i].Val = ipAddr.Val;

                SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                SYS_CONSOLE_MESSAGE(" IP Address: ");
                SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
            }

            appData.state = APP_TCPIP_OPENING_SERVER;
        }
        break;

    case APP_TCPIP_OPENING_SERVER:
    {
        SYS_CONSOLE_PRINT("Waiting for Client Connection on port: %d\r\n", SERVER_PORT);
        appData.socket = TCPIP_TCP_ServerOpen(IP_ADDRESS_TYPE_IPV4, SERVER_PORT, 0);
        if (appData.socket == INVALID_SOCKET)
        {

            SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");
            break;
        }

        appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
    }
    break;
    case APP_TCPIP_WAIT_FOR_CONNECTION:
    {
        // SYS_CONSOLE_MESSAGE("Waiting for conenction...\r\n");
        if (!TCPIP_TCP_IsConnected(appData.socket))
        {
            return;
        }
        else
        {
            // We got a connection
            appData.state = APP_TCPIP_SERVING_CONNECTION;
            SYS_CONSOLE_MESSAGE("serving a connection\r\n");
        }
    }
    break;
    case APP_TCPIP_SERVING_CONNECTION:
    {

        if (!TCPIP_TCP_IsConnected(appData.socket) || TCPIP_TCP_WasDisconnected(appData.socket))
        {
            appData.state = APP_TCPIP_CLOSING_CONNECTION;
            SYS_CONSOLE_MESSAGE("Connection was closed\r\n");
            break;
        }

        int16_t wMaxGet, wMaxPut, wCurrentChunk;
        uint16_t w, w2;
        uint8_t AppBuffer[32 + 1];
        // Figure out how many bytes have been received and how many we can transmit.
        wMaxGet = TCPIP_TCP_GetIsReady(appData.socket); // Get TCP RX FIFO byte count
        wMaxPut = TCPIP_TCP_PutIsReady(appData.socket); // Get TCP TX FIFO free space

        // Make sure we don't take more bytes out of the RX FIFO than we can put into the TX FIFO
        if (wMaxPut < wMaxGet)
            wMaxGet = wMaxPut;

        // Process all bytes that we can
        // This is implemented as a loop, processing up to sizeof(AppBuffer) bytes at a time.
        // This limits memory usage while maximizing performance.  Single byte Gets and Puts are a lot slower than multibyte GetArrays and PutArrays.
        wCurrentChunk = sizeof(AppBuffer) - 1;
        for (w = 0; w < wMaxGet; w += sizeof(AppBuffer) - 1)
        {
            // Make sure the last chunk, which will likely be smaller than sizeof(AppBuffer), is treated correctly.
            if (w + sizeof(AppBuffer) - 1 > wMaxGet)
                wCurrentChunk = wMaxGet - w;

            // Transfer the data out of the TCP RX FIFO and into our local processing buffer.
            TCPIP_TCP_ArrayGet(appData.socket, AppBuffer, wCurrentChunk);

            // Perform the "ToUpper" operation on each data byte
            for (w2 = 0; w2 < wCurrentChunk; w2++)
            {
                i = AppBuffer[w2];
                if (i >= 'a' && i <= 'z')
                {
                    i -= ('a' - 'A');
                    AppBuffer[w2] = i;
                }
                else if (i == '\x1b') // escape
                {
                    appData.state = APP_TCPIP_CLOSING_CONNECTION;
                    SYS_CONSOLE_MESSAGE("Connection was closed\r\n");
                }
            }
            AppBuffer[w2] = 0; // end the console string properly

            // Transfer the data out of our local processing buffer and into the TCP TX FIFO.
            SYS_CONSOLE_PRINT("Server Sending %s\r\n", AppBuffer);
            TCPIP_TCP_ArrayPut(appData.socket, AppBuffer, wCurrentChunk);

            // No need to perform any flush.  TCP data in TX FIFO will automatically transmit itself after it accumulates for a while.  If you want to decrease latency (at the expense of wasting network bandwidth on TCP overhead), perform and explicit flush via the TCPFlush() API.
        }
    }
    break;
    case APP_TCPIP_CLOSING_CONNECTION:
    {
        // Close the socket connection.
        TCPIP_TCP_Close(appData.socket);
        appData.socket = INVALID_SOCKET;
        appData.state = APP_TCPIP_WAIT_FOR_IP;
    }

    default:
    {
        /* TODO: Handle error in application's state machine. */
        break;
    }
    }
}

/*******************************************************************************
 End of File
 */
