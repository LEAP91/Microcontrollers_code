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

WORD_VAL1 COIL;
WORD_VAL2 REG;
uint8_t coil_status_byte; //Save the status of each coils as a bit
uint8_t input_status_byte; //Save the status of each input as a bit

uint8_t COIL_REG[3] = 
{
    0, //0x00FA
    0, //0x00FB
    0  //0x00FC
}; //Saves the value of each coil in binary form

uint16_t HOLDING_REG[HOLDING_REG_SIZE] =
                        {
                        0x0001,                 //0x00B0 - Node ID
                        0x0001,                 //0x00B1 - Power Up / Safe
                        0x0000,                 //0x00B2 - Digital Outputs
                        0x0000,                 //0x00B3 - Digital Inputs
                       };

uint16_t INPUT_REG[INPUT_REG_SIZE] =
                        {
                        0,     //160
                        0,     //161
                        0,     //162
                        0,     //163
                        };

uint16_t REVERSED_HOLDING_REG[HOLDING_REG_SIZE]; //Mirrors the holding reg. to reverse bytes

//Function Code 01 - Read coils status
void coils_status(void)
{   
    coil_status_byte=0;
    uint8_t n = MODBUS_RX[11];
    int i;
    uint8_t start_addr = MODBUS_RX[9] - 0xFA;
    //SYS_CONSOLE_PRINT("Starting Addr. %d\r\n", start_addr);
    for(i=0; i<n; i++)
    {
        coil_status_byte |= COIL_REG[start_addr];
        start_addr++;
    }
    // shift starting address to the first bit as per modbus specs since the first byte
    // is the starting address
    coil_status_byte = coil_status_byte>>(MODBUS_RX[9] - 0x00FA);
    SYS_CONSOLE_PRINT("Coil status byte: %X\r\n", coil_status_byte);
}

void Read_Coils(void)
{
    SYS_CONSOLE_MESSAGE("Coil status Request..\r\n");
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 252) ||
         (MODBUS_COMMAND.StartAddress.Val < 250) ||
        ((MODBUS_COMMAND.StartAddress.Val) - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > 0x00FC)
    {
        SYS_CONSOLE_MESSAGE("Ilegal data Address..\r\n");
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(MODBUS_COMMAND.NumberOfRegister.Val>=0x07D0 || MODBUS_COMMAND.NumberOfRegister.Val<=0x0001)
    {
        SYS_CONSOLE_MESSAGE("Ilegal Qty of outputs..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
    //Assemble data to be sent
    
    //Fixed data length of 4bytes since byte count max is 1byte & 
    //coils status max is 1byte(3coils)
    MODBUS_RX[4]=0x0;
    MODBUS_RX[5]=0x4;
    //Byte count: Always 1Byte since there is only 3 coils(bits)
    MODBUS_RX[8]=0X1;
        
    //Call function to update coil status register
    coils_status();
    
    //Data: Byte containing the status bits requested
    MODBUS_RX[9]=coil_status_byte;
    
    //copy modbus rx buffer to modbus tx buffer
    //Always copy 10bytes
    memcpy(MODBUS_TX, MODBUS_RX, 10);
        
}

// Function code 02 - Read Inputs status
void input_status(void)
{
    input_status_byte=0;
    uint8_t n=MODBUS_RX[11];
    int i;
    uint8_t start_addr = MODBUS_RX[9] - 0xA0;
    //SYS_CONSOLE_PRINT("Starting Addr. %d\r\n", start_addr);
    for(i=0; i<n; i++)
    {        
        input_status_byte |= INPUT_REG[start_addr];
        start_addr++;
    }
    // shift starting address to the first bit as per modbus specs since the first byte
    // is the starting address
    input_status_byte = input_status_byte>>(MODBUS_RX[9] - 0x00A0);
    SYS_CONSOLE_PRINT("Input status byte: %X\r\n", input_status_byte);
}

void Read_Discrete_Inputs(void)
{
    SYS_CONSOLE_MESSAGE("Digital inputs status request..\r\n");
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 163) ||
         (MODBUS_COMMAND.StartAddress.Val < 160) ||
        ((MODBUS_COMMAND.StartAddress.Val) - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > 0x00A3)
    {
        SYS_CONSOLE_MESSAGE("Ilegal data Address..\r\n");
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(MODBUS_COMMAND.NumberOfRegister.Val >=0x07D0 || MODBUS_COMMAND.NumberOfRegister.Val <= 0x0001 )
    {
        SYS_CONSOLE_MESSAGE("Ilegal Qty Inputs..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
    //Assemble data to be sent
    //Fixed data length of 4bytes since byte count max is 1byte & 
    //digital input status max is 1byte(4inputs)
    MODBUS_RX[4]=0x0;
    MODBUS_RX[5]=0x4;
    //Byte count: Always 1Byte since there is only 4 inputs(bits)
    MODBUS_RX[8]=0X1;
    
    //Call function to update input status register
    input_status();
    //Data: Byte containing the status bits requested
    MODBUS_RX[9]=input_status_byte;
    
    //copy modbus rx buffer to modbus tx buffer
    //Always copy 10bytes
    memcpy(MODBUS_TX, MODBUS_RX, 10);
    
}

// Function code 03 - Read holding registers
void readHoldingRegister(void)
{
    int a;
    // Everytime this function is called the reverse hold. reg.
    // should be set to 0, otherwise the last value would overlap
    REVERSED_HOLDING_REG[2]=0;
    REVERSED_HOLDING_REG[3]=0;
    
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 179) ||
         (MODBUS_COMMAND.StartAddress.Val < 176) ||
        ((MODBUS_COMMAND.StartAddress.Val) - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > 179)
    {
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(MODBUS_COMMAND.NumberOfRegister.Val >=0x07D0 || MODBUS_COMMAND.NumberOfRegister.Val <= 0x0001 )
    {
        SYS_CONSOLE_MESSAGE("Ilegal Qty of Registers..\r\n");
        ModbusError(Illegal_Qty);
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
       for(a=0; a<4; a++)
        {
           
            REVERSED_HOLDING_REG[a] = (uint16_t)((HOLDING_REG[a] & 0xFF) << 8 | (HOLDING_REG[a] & 0xFF00) >> 8);
        }
       //SYS_CONSOLE_MESSAGE("Byte order changed\r\n");
       //ReadByteReverse = 0;
    }
    //SYS_CONSOLE_PRINT("Coil reg Value: %x\r\n", HOLDING_REG[2]);
    //Copy MODBUS_RX and HOLdING_REG into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 9);
    // Copy from holding reg. array address up to number of registers
    memcpy(MODBUS_TX + 9,
            REVERSED_HOLDING_REG + (MODBUS_COMMAND.StartAddress.Val - 0x00B0),
            sizeof(HOLDING_REG));
}

void output_drive(void)
{
    int i;
    HOLDING_REG[2]=0;
    switch(COIL.Addr)
    {
        case 0x00FA:
            if(COIL.Val == 0xFF)
            {
                LED1_On();
                COIL_REG[0]=1;
            }
            else
            {
                LED1_Off();
                COIL_REG[0]=0;
            }
            break;
        case 0x00FB:
            if(COIL.Val == 0xFF)
            {
                LED2_On();
                COIL_REG[1]=0b00000010;
            }
            else
            {
                LED2_Off();
                COIL_REG[1]=0;
            }
            break;
        case 0x00FC:
            if(COIL.Val == 0xFF)
            {
                LED3_On();
                COIL_REG[2]=0b00000100;
            }
            else
            {
                LED3_Off();
                COIL_REG[2]=0;
            }
            break;
    }
    for(i=0;i<3;i++)
        HOLDING_REG[2] |= COIL_REG[i];
    //SYS_CONSOLE_PRINT("Coil reg changed to: %x\r\n", HOLDING_REG[2]);
    
}

// Function code 05 - Write single coil
void writeSingleCoil(void)
{
    SYS_CONSOLE_MESSAGE("Write single coil function called\r\n");
    //Verify data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 252) ||
         (MODBUS_COMMAND.StartAddress.Val < 250))
    {
        SYS_CONSOLE_MESSAGE("Ilegal data Address..\r\n");
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(!(MODBUS_COMMAND.NumberOfRegister.Val==0x0000 || MODBUS_COMMAND.NumberOfRegister.Val==0xFF00))
    {
        SYS_CONSOLE_MESSAGE("Ilegal Output value..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
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
    COIL.Addr = MODBUS_RX[9];
    COIL.Val = MODBUS_RX[10];
    output_drive();
}

// Function code 06 - Write single register
void Write_Single_register(void)
{
    SYS_CONSOLE_MESSAGE("Write single register function called\r\n");
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 179) ||
         (MODBUS_COMMAND.StartAddress.Val < 176))
    {
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(MODBUS_COMMAND.NumberOfRegister.Val>=0xFFFF || MODBUS_COMMAND.NumberOfRegister.Val<=0x0000)
    {
        SYS_CONSOLE_MESSAGE("Ilegal register value..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
    //Assemble the data to be sent
    //SYS_CONSOLE_PRINT("Modbus Function code to be TX: %d\r\n", MODBUS_COMMAND.FunctionCode);
    MODBUS_RX[7] = MODBUS_COMMAND.FunctionCode;
    
    MODBUS_RX[8] = 0x00;
    
    //Length
    MODBUS_RX[4] = 0X0;
    MODBUS_RX[5] = 0X6;
    
    //Copy MODBUS_RX into MODBUS_TX and send MODBUS_TX as response
    memcpy(MODBUS_TX, MODBUS_RX, 12);
    REG.Addr2 = MODBUS_COMMAND.StartAddress.Val;
    REG.Val2 = MODBUS_COMMAND.NumberOfRegister.Val;
    switch(REG.Addr2)
    {
        case 0x00B0:
            HOLDING_REG[0]=REG.Val2;
            break;
        case 0x00B1:
            HOLDING_REG[1]=REG.Val2;
            break;
        case 0x00B2:
            HOLDING_REG[2]=REG.Val2;
            break;
        case 0x00B3:
            HOLDING_REG[3]=REG.Val2;
            break;
    
    }
}

void multi_coils_drive(void)
{
    COIL.Addr = MODBUS_RX[9]; // Start Address
    uint8_t n = MODBUS_RX[11]; // Qty of coils to drive
    uint8_t outputs = MODBUS_RX[13]; //Outputs Byte
    //SYS_CONSOLE_PRINT("Outputs value is: %d\r\n", outputs);
    int i;
    for(i=0; i<n ; i++)
    {
        if(outputs&0b00000001)
        {
            COIL.Val = 0xFF;
        }
        else
        {
            COIL.Val = 0x00;
        }
        SYS_CONSOLE_PRINT("Coil %d value is %d\r\n", COIL.Addr, COIL.Val);
        output_drive();
        COIL.Addr++;
        outputs = outputs>>1;
    }           
    
}

// Function code 15 - Write multiple coils
void Write_Multiple_Coils(void)
{
    SYS_CONSOLE_MESSAGE("Write multiple coils request..\r\n");
    //Verify that the data can be sent
    if((MODBUS_COMMAND.StartAddress.Val > 252) ||
         (MODBUS_COMMAND.StartAddress.Val < 250) ||
        ((MODBUS_COMMAND.StartAddress.Val) - 1 + MODBUS_COMMAND.NumberOfRegister.Val) > 0x00FC)
    {
        SYS_CONSOLE_MESSAGE("Ilegal data Address..\r\n");
        ModbusError(Illegal_Data_Address);
        return;
    }
    else if(MODBUS_COMMAND.NumberOfRegister.Val>=0x07D0 || MODBUS_COMMAND.NumberOfRegister.Val<=0x0001)
    {
        SYS_CONSOLE_MESSAGE("Ilegal Qty of outputs..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
    else if(!(MODBUS_COMMAND.ByteCount == 1))
    {
        SYS_CONSOLE_MESSAGE("Ilegal Qty of bytes..\r\n");
        ModbusError(Illegal_Qty);
        return;
    }
    //Assemble data to be sent
    
    //Fixed data length of 4bytes since byte count max is 1byte & 
    //coils status max is 1byte(3coils)
    MODBUS_RX[4]=0x0;
    MODBUS_RX[5]=0x4;
          
    //Call function to update coil status register
    multi_coils_drive();
    
    //copy modbus rx buffer to modbus tx buffer
    //Always copy 10bytes
    memcpy(MODBUS_TX, MODBUS_RX, 12);
    
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
    
    // *** This only applies to function code Write Mutiple Registers ***
    MODBUS_COMMAND.ByteCount = MODBUS_RX[12];
    MODBUS_COMMAND.OutputsValue.v[1] = MODBUS_RX[13];
    MODBUS_COMMAND.OutputsValue.v[0] = MODBUS_RX[14];

     //Verify the function code
    //SYS_CONSOLE_PRINT("Function code Received: %d\r\n", MODBUS_RX[7]);
    if(!((MODBUS_COMMAND.FunctionCode == ReadHoldingRegister)      ||
            (MODBUS_COMMAND.FunctionCode == WriteMultipleRegister) ||
            (MODBUS_COMMAND.FunctionCode == ReadInputRegister)     ||
            (MODBUS_COMMAND.FunctionCode == WriteSingleCoil)       ||
            (MODBUS_COMMAND.FunctionCode == WriteSingleRegister)   ||
            (MODBUS_COMMAND.FunctionCode == ReadCoil)              ||
            (MODBUS_COMMAND.FunctionCode == ReadDiscreteInputs)    ||
            (MODBUS_COMMAND.FunctionCode == WriteMultipleCoils)))
    {
        SYS_CONSOLE_MESSAGE("MODBUS ERROR ILLEGAL FUNCTION CODE: \r\n");
        ModbusError(Illegal_Function_Code);
        memcpy(MODBUS_TX, MODBUS_RX, 9);
        iLlegal_Function = 1;
        return;
    }
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

void Modbus_Server(void)
{
    //Unpack Modbus cliente data
    ProcessReceivedMessage();
    
    //Read the function code
    switch(MODBUS_COMMAND.FunctionCode)
    {
        case WriteMultipleCoils:
            //Assemble data
            Write_Multiple_Coils();
            
            //Test if server sends Exception error to the client
            if ((MODBUS_TX[MODBUS_FunctionCode] == 0X95))
            {
                SYS_CONSOLE_MESSAGE("Exception error \r\n");
                w = 0x09 + MODBUS_TX[8];
            }

            else
                w = 12;

            break; 
            
        case ReadDiscreteInputs:
            //Assemble the data
            Read_Discrete_Inputs();

            //Test if server sends Exception error to the client
            if ((MODBUS_TX[MODBUS_FunctionCode] == 0X82))
            {
                SYS_CONSOLE_MESSAGE("Exception error \r\n");
                w = 0x09 + MODBUS_TX[8];
            }

            else
                w = 10;

            break; 
        case ReadHoldingRegister:
            //Assemble the data
            readHoldingRegister();
            if((!MODBUS_TX[MODBUS_FunctionCode]==0x83))
            {
                w = 0x09 + MODBUS_TX[5];
            }
            
            else w=9 + MODBUS_RX[8];
            
            break;
        
        case WriteMultipleRegister:
            //Assemble the data
            //writeHoldingRegister();

            //Test if server sends Exception error to the client
            if (!(MODBUS_TX[MODBUS_FunctionCode] == 0X90))
            {
                w = 12;
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
            
        case WriteSingleRegister:  
            
            //Assemble the data
            Write_Single_register();

            //Test if server sends Exception error to the client
            if ((MODBUS_TX[MODBUS_FunctionCode] == 0X86))
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

void input_drive(GPIO_PIN pin, uintptr_t context)
{
    int i;
    // Reset the holding reg. to 0 since this function reads
    // every input
    HOLDING_REG[3]=0;
    if(SWITCH1_Get()== 0)
    {
        SYS_CONSOLE_MESSAGE("switch 1 called\r\n");
        INPUT_REG[0]=0b00000001;
    }
    else if(SWITCH1_Get()==1)
    {
        SYS_CONSOLE_MESSAGE("switch 1 cleared\r\n");
        INPUT_REG[0]=0;
    }
    if(SWITCH2_Get()== 0)
    {
        SYS_CONSOLE_MESSAGE("switch 2 called\r\n");
        INPUT_REG[1]=0b00000010;
    }
    else if(SWITCH2_Get()==1)
    {
        INPUT_REG[1]=0;
    }
    if(SWITCH3_Get()== 0)
    {
        SYS_CONSOLE_MESSAGE("switch 3 called\r\n");
        INPUT_REG[2]=0b00000100;
    }
    else if(SWITCH3_Get()==1)
    {
        INPUT_REG[2]=0;
    }
    if(SWITCH4_Get()== 0)
    {
        SYS_CONSOLE_MESSAGE("switch 4 called\r\n");
        INPUT_REG[3]=0b00001000;
    }
    else if(SWITCH4_Get()==1)
    {
        INPUT_REG[3]=0;
    }
    // Read input reg. and update holding reg. input address
    for(i=0;i<4;i++)
        HOLDING_REG[3] |= INPUT_REG[i];
    
}

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    // Initialize digital inputs interrupts
    GPIO_PinInterruptEnable(SWITCH1_PIN);
    GPIO_PinInterruptEnable(SWITCH2_PIN);
    GPIO_PinInterruptEnable(SWITCH3_PIN);
    GPIO_PinInterruptEnable(SWITCH4_PIN);
 }

void APP_Tasks ( void )
{
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    int                 i, nNets;
    TCPIP_NET_HANDLE    netH;
    
    // Create interrupts for digital inputs
    GPIO_PinInterruptCallbackRegister(SWITCH1_PIN, input_drive, (uintptr_t)NULL);
    GPIO_PinInterruptCallbackRegister(SWITCH2_PIN, input_drive, (uintptr_t)NULL);
    GPIO_PinInterruptCallbackRegister(SWITCH3_PIN, input_drive, (uintptr_t)NULL);
    GPIO_PinInterruptCallbackRegister(SWITCH4_PIN, input_drive, (uintptr_t)NULL);
    
    
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
                    //SYS_CONSOLE_PRINT("# bytes to sent: %d\r\n", w);
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
