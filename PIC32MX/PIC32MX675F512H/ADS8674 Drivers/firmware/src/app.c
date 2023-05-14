
#include "app.h"
#include "system/debug/sys_debug.h"
#include "configuration.h"
#include "definitions.h"
#include "ads8674_drivers.h"

APP_DATA appData;

#define UART_CONSOLE_NUM_BYTES_READ 20
#define UART_CONSOLE_READ_BUFFER_SIZE 20

uint8_t uart_console_read_buffer[UART_CONSOLE_READ_BUFFER_SIZE];
float value;
uint64_t range;

void APP_Initialize(void)
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
}

static void APP_DebugAPIDemonstrate(void)
{
    SPI_ADC_CS_Set();
    // SYS_CONSOLE_MESSAGE("Debug Message Test\n\r");
    // write_channel_range(1, 1);
    // range = read_channel_range(1);
    // value = read_channel(1);
    read_ch_threshold();
    // SYS_CONSOLE_PRINT("ADC value %f\n\r", value);
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
        APP_DebugAPIDemonstrate();
        appData.state = APP_STATE_CONSOLE_READ_WRITE;
        break;
    }

    case APP_STATE_CONSOLE_READ_WRITE:
    {
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
