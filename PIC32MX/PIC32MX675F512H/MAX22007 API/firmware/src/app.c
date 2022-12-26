
#include "app.h"
#include "system/debug/sys_debug.h"
#include "configuration.h"
#include "MAX22007_api.h"
#include <string.h>
#include "peripheral/gpio/plib_gpio.h"
#include "definitions.h"

APP_DATA appData;

#define UART_CONSOLE_NUM_BYTES_READ 10
#define UART_CONSOLE_READ_BUFFER_SIZE 10

uint8_t uart_console_read_buffer[UART_CONSOLE_READ_BUFFER_SIZE];

void APP_Initialize(void)
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
}

void APP_Tasks(void)
{

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

        MAX22007_write_register(CONFIGURATION, 0xf001); // Set all Latch bits

        MAX22007_Mode_Set(0, AO_10V); // setup Channel 0 to Voltage Mode

        DAC_LSB_value = MAX22007_convert_Voltage_to_LSB((float)6.5); // get integer value for 10.0 Volt

        MAX22007_Set_DAC(0, DAC_LSB_value); // write this 10V value to Channel 0
        MAX22007_Mode_Set(1, AO_10V);
        // DAC_LSB_value = MAX22007_convert_Voltage_to_LSB((float)6.5); // get integer value for 10.0 Volt

        // MAX22007_Set_DAC(0, DAC_LSB_value); // write this 10V value to Channel 0

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
