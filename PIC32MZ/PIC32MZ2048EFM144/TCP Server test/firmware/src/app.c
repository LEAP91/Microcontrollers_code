#include "app.h"
#include "peripheral/gpio/plib_gpio.h"
#include "bsp/bsp.h"
#include "configuration.h"
#include "system/debug/sys_debug.h"
#include "MODBUSTCPServer.h"

uint16_t w;
APP_DATA appData;

uint16_t ReadByteReverse = 1;           //If a modbus client requires to reverse the byte order for HOLDING REG
uint16_t InputByteReverse = 1;
uint16_t WriteByteReverse = 0;


static uint8_t iLlegal_Function;
uint8_t MODBUS_RX[MODBUS_RX_BUFFER_SIZE]; //Modbus TCP buffer
uint8_t MODBUS_TX[MODBUS_TX_BUFFER_SIZE]; //Modbus TCP bufffer to transfer respose

uint8_t _CoilStatus;
WORD_VAL1 COIL;
uint8_t COIL_Status[1]; //Save the status of each coils as a bit
uint8_t COIL_REG[3] = {0,0,0}; //Saves the value of each coil in binary form

uint16_t HOLDING_REG[HOLDING_REG_SIZE] =
                        {
                        0x0000,     //0
                        0x0001,     //1
                        0x0002,     //2
                        0x0003,     //3
                        0x0004,     //4
                        0x0005,     //5
                        0x0006,     //6
                        0x0007,     //7
                        0x0008,     //8
                        0x0009,     //9
                        0x0009,     //10
                        0x0008,     //11
                        0x0007,     //12
                        0x0007,     //13
                        0x0006,     //14
                        0x0005,     //15
                        0x0004,     //16
                        0x0003,     //17
                        0x0002,     //18
                        0x0001,     //19
                        0x0025,     //20
                        0x0035,     //21
                        0x0036,     //22
                        0x9957,     //23
                        0x7890      //24
                       };

uint16_t INPUT_REG[INPUT_REG_SIZE] =
                        {
                        0x0001,     //0
                        0x0000,     //1
                        0x0000,     //2
                        0x0003,     //3
                        0x0004,     //4
                        0x0005,     //5
                        0x0006,     //6
                        0x0007,     //7
                        0x0008,     //8
                        0x0009,     //9
                        0x0009,     //10
                        0x0008,     //11
                        0x0007,     //12
                        0x0007,     //13
                        0x0006,     //14
                        0x0005,     //15
                        0x0004,     //16
                        0x0003,     //17
                        0x0002,     //18
                        0x0001      //19
                        };

void coils_status(void)
{   
    
    uint8_t i;
    uint8_t qty_coils; //quantity of coils to read
    uint8_t start_add; // starting address of coil to read
    start_add = MODBUS_COMMAND.StartAddress.v[0] = MODBUS_RX[9]; //Address Lo Stores the value for the Output Address
    qty_coils = MODBUS_COMMAND.NumberOfRegister.v[0] = MODBUS_RX[11]; //Stores Quantity of coils to read
    
    for(i=start_add; i<qty_coils; i++)
        _CoilStatus |= COIL_REG[i];
    
    COIL_Status[0]=_CoilStatus;
    
}


void output_drive(void)
{
    switch(COIL.Addr)
    {
        case 0x00:
            if(COIL.Val == 0xFF)
            {
                LED1_On();
                COIL_REG[0]=0b00000001;
            }
            else
            {
                LED1_Off();
                COIL_REG[0]=0;
            }
            break;
        case 0x01:
            if(COIL.Val == 0xFF)
            {
                LED2_On();
                COIL_REG[0]=0b00000010;
            }
            else
            {
                LED2_Off();
                COIL_REG[1]=0;
            }
            break;
        case 0x02:
            if(COIL.Val == 0xFF)
            {
                LED3_On();
                COIL_REG[0]=0b00000100;
            }
            else
            {
                LED3_Off();
                COIL_REG[2]=0;
            }
            break;
    }
}

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
 }


void ProcessReceivedMessage(void)
{

    //Transaction Identifier
    MODBUS_COMMAND.TransactionID.v[1] = MODBUS_RX[0];
    MODBUS_COMMAND.TransactionID.v[0] = MODBUS_RX[1];
    //Protocol Identifier
    MODBUS_COMMAND.ProtocolID.v[1] = MODBUS_RX[2];
    MODBUS_COMMAND.ProtocolID.v[0] = MODBUS_RX[3];
    //Number of bytes to receive
    MODBUS_COMMAND.Length = MODBUS_RX[5];
    //Unit Identifier
    MODBUS_COMMAND.UnitID = MODBUS_RX[6];
    //Function code
    MODBUS_COMMAND.FunctionCode = MODBUS_RX[7];
    //Address
    MODBUS_COMMAND.StartAddress.v[1] = MODBUS_RX[8]; //Address Hi
    MODBUS_COMMAND.StartAddress.v[0] = MODBUS_RX[9]; //Address Lo
    //Number of Register or Quantity
    MODBUS_COMMAND.NumberOfRegister.v[1] = MODBUS_RX[10];
    MODBUS_COMMAND.NumberOfRegister.v[0] = MODBUS_RX[11];

     //Verify the function code
    //SYS_CONSOLE_PRINT("Function code Received: %d\r\n", MODBUS_RX[7]);
    if(!((MODBUS_COMMAND.FunctionCode == ReadHoldingRegister)      ||
            (MODBUS_COMMAND.FunctionCode == WriteMultipleRegister) ||
            (MODBUS_COMMAND.FunctionCode == ReadInputRegister)     ||
            (MODBUS_COMMAND.FunctionCode == WriteSingleCoil)))
    {
        SYS_CONSOLE_MESSAGE("MODBUS ERROR ILLEGAL FUNCTION CODE: \r\n");
        ModbusError(Illegal_Function_Code);
        memcpy(MODBUS_TX, MODBUS_RX, 9);
        iLlegal_Function = 1;
        return;
    }
}

void readHoldingRegister(void)
{
    char a;

    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > ((int)HOLDING_REG_SIZE - 1)) ||
        ((MODBUS_COMMAND.StartAddress.Val - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > (int)HOLDING_REG_SIZE))
    {
        ModbusError(Illegal_Data_Address);
        return;
    }

    //Assemble the data to be sent
    
    //Function code
    MODBUS_RX[7] = MODBUS_COMMAND.FunctionCode;

    MODBUS_RX[8] = (char)MODBUS_COMMAND.NumberOfRegister.Val*2;
    //Length
    MODBUS_RX[4] = 0X0;
    MODBUS_RX[5] = MODBUS_RX[6] + MODBUS_RX[8];

    //change the byte order of HOLDING_REG
    if (ReadByteReverse)
    {
       for(a=0; a<sizeof(HOLDING_REG); a++)
        {
            //HOLDING_REG[a] = (uint16_t)((HOLDING_REG[a] & 0xFF) << 8 | (HOLDING_REG[a] & 0xFF00) >> 8);
        }
       ReadByteReverse = 0;
    }

    //Copy MODBUS_RX and HOLdING_REG into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 9);
    memcpy(MODBUS_TX + 9,
            HOLDING_REG + MODBUS_COMMAND.StartAddress.v[1] + MODBUS_COMMAND.StartAddress.v[0],
            sizeof(HOLDING_REG));
}

void writeHoldingRegister(void)
{
    char a;

    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > ((int)HOLDING_REG_SIZE - 1)) ||
        ((MODBUS_COMMAND.StartAddress.Val - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > (int)HOLDING_REG_SIZE))
    {
        ModbusError(Illegal_Data_Address);
        return;
    }

    //Assemble the data to be sent
    MODBUS_RX[7] = MODBUS_COMMAND.FunctionCode;

    MODBUS_RX[8] = 0x00; //Byte Count
    //Length
    MODBUS_RX[4] = 0X0;
    MODBUS_RX[5] = 0X6;


    //Copy MODBUS_RX into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 12);

    a = MODBUS_RX[12];
    //Write multiple register values into HOLDING_REG
    memcpy(HOLDING_REG + MODBUS_COMMAND.StartAddress.v[1] + MODBUS_COMMAND.StartAddress.v[0], MODBUS_RX + 13, a);//sizeof(MODBUS_RX));

    //change the byte order of HOLDING_REG
    if (WriteByteReverse)
    {
       for(a=0; a<sizeof(HOLDING_REG); a++)
        {
            //HOLDING_REG[a] = (uint16_t)((HOLDING_REG[a] & 0xFF) << 8 | (HOLDING_REG[a] & 0xFF00) >> 8);
        }
       WriteByteReverse = 0;
    }


}

void readInputRegister(void)
{
    char a;

    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > ((int)INPUT_REG_SIZE - 1)) ||
        ((MODBUS_COMMAND.StartAddress.Val - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > (int)INPUT_REG_SIZE))
    {
        ModbusError(Illegal_Data_Address);
        return;
    }

    //Assemble the data to be sent
    //Function code
    MODBUS_RX[7] = MODBUS_COMMAND.FunctionCode;

    MODBUS_RX[8] = (char)MODBUS_COMMAND.NumberOfRegister.Val*2;
    //Length
    MODBUS_RX[4] = 0X0;
    MODBUS_RX[5] = MODBUS_RX[6] + MODBUS_RX[8];

    //change the byte order of INPUT_REG
    if (InputByteReverse)
    {
        for(a=0; a<sizeof(INPUT_REG); a++)
        {
            //INPUT_REG[a] = (uint16_t)((INPUT_REG[a] & 0xFF) << 8 | (INPUT_REG[a] & 0xFF00) >> 8);
        }
       InputByteReverse = 0;
    }

    //Copy MODBUS_RX and HOLEING_REG into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 9);
    memcpy(MODBUS_TX + 9,
            INPUT_REG + MODBUS_COMMAND.StartAddress.v[1] + MODBUS_COMMAND.StartAddress.v[0],
            sizeof(INPUT_REG));
}

void writeSingleCoil(void)
{
    SYS_CONSOLE_MESSAGE("Write single coil function called\r\n");
    //uint8_t i;
    //Assemble the data to be sent
    //SYS_CONSOLE_PRINT("Modbus Function code to be TX: %d\r\n", MODBUS_COMMAND.FunctionCode);
    MODBUS_RX[7] = MODBUS_COMMAND.FunctionCode;
    
    MODBUS_RX[8] = 0x00;
    
    //Length
    MODBUS_RX[4] = 0X0;
    MODBUS_RX[5] = 0X6;
    //SYS_CONSOLE_PRINT(" Size of modbus rx buffer %ul\n", sizeof(MODBUS_RX));
    //Copy MODBUS_RX into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 12);
    SYS_CONSOLE_PRINT("Modbus Function code on TX: %d\r\n", MODBUS_TX[MODBUS_FunctionCode]);
    COIL.Addr = MODBUS_RX[9];
    COIL.Val = MODBUS_RX[10];
    output_drive();
}

//Modbus Error
void ModbusError(unsigned char ExceptionCode)
{

    MODBUS_RX[4]=0X00;
    MODBUS_RX[5]=0X03;
    MODBUS_RX[MODBUS_FunctionCode]+=0X80;
    MODBUS_RX[MODBUS_ExceptionCode]=ExceptionCode;

     //Copy MODBUS_RX into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 9);

}

void Read_Coils(void)
{
    SYS_CONSOLE_MESSAGE("Coil status Request..\r\n");
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > ((int)COIL_REG - 1)) ||
        ((MODBUS_COMMAND.StartAddress.Val - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > (int)COIL_REG))
    {
        SYS_CONSOLE_MESSAGE("Ilegal data Address..\r\n");
        ModbusError(Illegal_Data_Address);
        return;
    }
    //Assemble data to be sent
    
    //Fixed data length of 4bytes since byte count max is 1byte & 
    //coils status max is 1byte(3coils)
    MODBUS_RX[4]=0x0;
    MODBUS_RX[5]=0x4;
    //Byte count: Always 1Byte since there is only 3 coils(bits)
    MODBUS_RX[8]=0X1;
    //Data Byte containing the status bits requested
    MODBUS_RX[9]=COIL_Status[0];
    
    //Call function to update coil status register
    coils_status();
    
    //copy modbus rx buffer to modbus tx buffer
    //Always copy 10bytes
    memcpy(MODBUS_TX, MODBUS_RX, 10);
        
}

void Modbus_Server(void)
{
    //Unpack Modbus cliente data
    ProcessReceivedMessage();
    
    //Read the function code
    switch(MODBUS_COMMAND.FunctionCode)
    {
        case ReadHoldingRegister:
            //Assemble the data
            readHoldingRegister();
            if((!MODBUS_TX[MODBUS_FunctionCode]==0x83))
            {
                w = 0x09 + MODBUS_TX[5];
            }
            
            else w=9;
            
            break;
        
        case WriteMultipleRegister:
            //Assemble the data
            writeHoldingRegister();

            //Test if server sends Exception error to the client
            if (!(MODBUS_TX[MODBUS_FunctionCode] == 0X90))
            {
                w = 12;
            }

            else
                w = 9;

            break;
            
        case ReadInputRegister:
            
            readInputRegister();

            //Test if server sends Exception error to the client
            if (!(MODBUS_TX[MODBUS_FunctionCode] == 0X84))
            {
                w = 0x09 + MODBUS_TX[8];
            }

            else
                w = 9;

            break;
        case WriteSingleCoil:  
            
            //Assemble the data
            writeSingleCoil();

            //Test if server sends Exception error to the client
            if ((MODBUS_TX[MODBUS_FunctionCode] == 0X85))
            {
                SYS_CONSOLE_MESSAGE("Exception error \r\n");
                w = 0x09 + MODBUS_TX[8];
            }

            else
                w = 12;

            break; 
            
        case ReadCoil:
            //Assemble the data
            Read_Coils();
            
            //Test if server sends exception error to the client
            if ((MODBUS_TX[MODBUS_FunctionCode] == 0X81))
            {
                w = 0x09 + MODBUS_TX[8];
            }
            else
                w=10;
            break;
         
    }
    
                    
}

void APP_Tasks ( void )
{
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    int                 i, nNets;
    TCPIP_NET_HANDLE    netH;
    //SYS_CONSOLE_MESSAGE("Test messagge");
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
          
            if (appInitialized)
            {
                //LED1_On();
                appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
            }
            break;
        }
        case APP_STATE_WAIT_UART_CONSOLE_CONFIGURED:
            if (SYS_CONSOLE_Status(SYS_CONSOLE_INDEX_0) == SYS_STATUS_READY)
            {
                appData.state = APP_STATE_GET_CONSOLE_HANDLE;
            }
            break;
            
        case APP_STATE_GET_CONSOLE_HANDLE:
            /* Get handles to both the USB console instances */
            appData.consoleHandle = SYS_CONSOLE_HandleGet(SYS_CONSOLE_INDEX_0);

            if (appData.consoleHandle != SYS_CONSOLE_HANDLE_INVALID)
            {
                appData.state = APP_TCPIP_WAIT_INIT;
                RGB_LED_B_On();

            }
            else
            {
                appData.state = APP_STATE_ERROR;
                RGB_LED_R_On();
            }
            break;
                
        case APP_TCPIP_WAIT_INIT:
        {
          
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
             if(tcpipStat < 0)
            {   
                 //RGB_LED_R_On();
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                //LED2_On();
                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {

                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);

#if defined(TCPIP_STACK_USE_NBNS)
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
                    SYS_CONSOLE_PRINT("Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif  // defined(TCPIP_STACK_USE_NBNS)
                    (void)netName;          // avoid compiler warning 
                    (void)netBiosName;      // if SYS_CONSOLE_PRINT is null macro

                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;
            }
            break;
        }
        case APP_TCPIP_WAIT_FOR_IP:

            // if the IP address of an interface has changed
            // display the new value on the system console
            //LED3_On();
            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                if(!TCPIP_STACK_NetIsReady(netH))
                {
                    //RGB_LED_B_On();
                    return;    // interface not ready yet!
                }
                
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                    SYS_CONSOLE_MESSAGE(" IP Address: ");
                    SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                }
                //RGB_LED_B_Off();
                //RGB_LED_G_On();
                appData.state = APP_TCPIP_OPENING_SERVER;
            }
            break;
            
            case APP_TCPIP_OPENING_SERVER:
        {
            SYS_CONSOLE_PRINT("Waiting for Client Connection on port: %d\r\n", MODBUS_PORT);
            appData.socket = TCPIP_TCP_ServerOpen(IP_ADDRESS_TYPE_IPV4, MODBUS_PORT, 0);
            if (appData.socket == INVALID_SOCKET)
            {
                //LED3_On();
                SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");
                break;
            }
            
            appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
        }
        break;
        
        // This is the Iddle state when everything is working correctly
        //
        //
        
        case APP_TCPIP_WAIT_FOR_CONNECTION:
        {
            if (!TCPIP_TCP_IsConnected(appData.socket))
            {
                return;
            }
            else
            {
                // We got a connection
                appData.state = APP_TCPIP_SERVING_CONNECTION;
                SYS_CONSOLE_MESSAGE("Received a connection\r\n");
            }
        }
        break;
        
        //This state open everytime that a packet is received
        //
        //
        
        case APP_TCPIP_SERVING_CONNECTION:
        {
            
            if (!TCPIP_TCP_IsConnected(appData.socket) || TCPIP_TCP_WasDisconnected(appData.socket))
            {
                appData.state = APP_TCPIP_CLOSING_CONNECTION;
                SYS_CONSOLE_MESSAGE("Connection was closed\r\n");
                break;
            }
            int16_t wMaxGet, wMaxPut;
                        
            // Figure out how many bytes have been received and how many we can transmit.
            wMaxGet = TCPIP_TCP_GetIsReady(appData.socket);	// Get TCP RX FIFO byte count
            wMaxPut = TCPIP_TCP_PutIsReady(appData.socket);	// Get TCP TX FIFO free space
            
            //When there is a forced connection the loop executes constantly
            //Use this conditional to execute the modbus server only when wMaxGet receives data
            if(wMaxGet==0)
            {
              break;  
            }
            else
            {
                // Make sure we don't take more bytes out of the RX FIFO than we can put into the TX FIFO
                if(wMaxPut < wMaxGet)
                        wMaxGet = wMaxPut;

                // Transfer the data out of the TCP RX FIFO and into the local Modbus buffer.
                TCPIP_TCP_ArrayGet(appData.socket, MODBUS_RX, wMaxGet);
                Modbus_Server();  
                if(iLlegal_Function)
                {
                    SYS_CONSOLE_MESSAGE("!Ilegal Function code received");
                    TCPIP_TCP_ArrayPut(appData.socket, MODBUS_TX, 9);
                    iLlegal_Function = 0;
                }
                else
                {
                    SYS_CONSOLE_PRINT("Total number of bytes to sent: %d\r\n", w);
                    TCPIP_TCP_ArrayPut(appData.socket, MODBUS_TX, w);
                }         

                // No need to perform any flush.  TCP data in TX FIFO will automatically transmit itself after it accumulates 
                //for a while.  If you want to decrease latency (at the expense of wasting network bandwidth on TCP overhead)
                //, perform and explicit flush via the TCPFlush() API. 
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
