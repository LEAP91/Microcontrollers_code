/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"


#define SERVER_PORT 9760

const char *netName, *netBiosName;
static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
IPV4_ADDR ipAddr;
int i, nNets;
TCPIP_NET_HANDLE netH;
int16_t wMaxGet, wMaxPut, wCurrentChunk;
uint16_t w, w2;
uint8_t AppBuffer[32 + 1];

//uint8_t led1 = 0b00000011;
//uint8_t led2 = 0b00000100;
//uint8_t led3 = 0b00001000;
//uint8_t led4 = 0b11110000;

APP_DATA appData;



void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
            //SPI4_Write(&led1,1);

            if (appInitialized)
            {

                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {
                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);
                    (void)netName;          // avoid compiler warning 
                    (void)netBiosName;      // if SYS_CONSOLE_PRINT is null macro
                }
                if(nNets<=0){
                    break;
                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;
                //SPI4_Write(&led1, 1);
            }
            break;
        }

        case APP_TCPIP_WAIT_FOR_IP:
        {
            //SPI4_Write(&led2, 1);
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                if(!TCPIP_STACK_NetIsReady(netH))
                {
                    return;    // interface not ready yet!
                }
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                }
            }
            appData.state = APP_TCPIP_OPENING_SERVER;

            break;
        }
        case APP_TCPIP_OPENING_SERVER:
        {
            appData.socket = TCPIP_TCP_ServerOpen(IP_ADDRESS_TYPE_IPV4, SERVER_PORT, 0);
             if (appData.socket == INVALID_SOCKET)
            {
                //SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");
                //SPI4_Write(&led3, 1);
                break;
            }
             //SPI4_Write(&led2, 1);
             appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
             
             break;
        }
        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
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
