
#include "app.h"
#include "system/debug/sys_debug.h"
#include "configuration.h"
#include "MAX22007_api.h"
#include <string.h>
#include "peripheral/gpio/plib_gpio.h"
#include "definitions.h"

APP_DATA appData;

#define UART_CONSOLE_NUM_BYTES_READ              10
#define UART_CONSOLE_READ_BUFFER_SIZE            10
#define TX_NUM_BYTES     4
#define RX_NUM_BYTES     2

uint8_t txBuffer[TX_NUM_BYTES];
uint8_t rxBuffer[RX_NUM_BYTES];

uint8_t dac_cmd[4] =
    {
        0x00, // DAC Register Address + Read/write operation, Read=1 | write=0
        0x00, // MSB payload to send to DAC
        0x00, // LSB payload to send to DAC
        0,    // CRC value
};

uint8_t *dac_cmd_ptr = dac_cmd;

uint8_t uart_console_read_buffer[UART_CONSOLE_READ_BUFFER_SIZE];

// Calculate crc value and append to DAC cmd
uint8_t crc8_MAXIM(uint8_t *data, uint8_t len)
{

    uint8_t crc, i;
    crc = 0x00;

    while (len--)
    {

        crc ^= *data++;
        for (i = 0; i < 8; i++)
        {

            if (crc & 0x01)
            {

                crc = (crc >> 1) ^ 0x8c;
            }
            else
                crc >>= 1;
        }
    }
    return crc;
}

void revision_id(uint8_t *dac_cmd_ptr)
{
    SYS_CONSOLE_MESSAGE("Read DAC revision ID...\n\r");
    dac_cmd[0] = (0x00 << 1) + (0x00);
    dac_cmd[1] = 0x00;
    dac_cmd[2] = 0x00;
    //dac_cmd[3] = crc8_MAXIM(dac_cmd_ptr, 3);
    dac_cmd[3] = 0x01;
    SYS_CONSOLE_PRINT("Data to transmit: %X %X %X %X\n\r", dac_cmd[0], dac_cmd[1], dac_cmd[2], dac_cmd[3]);
    memcpy(txBuffer, dac_cmd, 4);
    SYS_CONSOLE_PRINT("Tx buffer value: %X\n\r", txBuffer[0]);
     /* Submit Write-Read Request */
    SPI4_WriteRead(&txBuffer, 4, &rxBuffer, 4);
    //SPI4_Write(&txBuffer, 4);
    //SPI4_Read(&rxBuffer, 4);

    /* Poll and wait for the transfer to complete */
    while(SPI4_IsBusy());
    
}

void APP_Initialize ( void )
{
     /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
}


void APP_Tasks ( void )
{

    /* Check the application's current state. */

    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_WAIT_UART_CONSOLE_CONFIGURED:
          
        {
            //RED_ON;
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
                appData.state = APP_STATE_DEMONSTRATE_DEBUG_APIS;
            }
            else
            {
                appData.state = APP_STATE_ERROR;
            }
            break;
        }

        /* TODO: implement your application state machine.*/
        case APP_STATE_DEMONSTRATE_DEBUG_APIS:
        {    
            SYS_CONSOLE_MESSAGE("Debug Console Configred...\n\r");
            appData.state = APP_STATE_WRITE_DAC;
            break;
        } 
        case APP_STATE_WRITE_DAC:
        {    
            revision_id(dac_cmd_ptr);
            SYS_CONSOLE_PRINT("DAC revision ID: %X %X %X\n\r", rxBuffer[0],rxBuffer[1],rxBuffer[2]);
            appData.state = APP_STATE_IDLE;
            break;
        } 
        
        case APP_STATE_IDLE:
        {    
         
            break;
        } 
          
        

        break;
        /* The default state should never be executed. */
        case APP_STATE_ERROR:
            
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
