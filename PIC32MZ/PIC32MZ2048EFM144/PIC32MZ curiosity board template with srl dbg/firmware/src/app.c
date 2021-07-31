#include "app.h"
#include "peripheral/gpio/plib_gpio.h"
#include "bsp/bsp.h"
#include "configuration.h"
#include "system/debug/sys_debug.h"

APP_DATA appData;

char ip[]= "125.125.125.125";

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
        
 }

void APP_Tasks ( void )
{
    switch(appData.state)
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
          
            if (appInitialized)
            {
                LED1_On();
                
                appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
            }
            break;
        }
        
        case APP_STATE_WAIT_UART_CONSOLE_CONFIGURED:
            if (SYS_CONSOLE_Status(SYS_CONSOLE_INDEX_0) == SYS_STATUS_READY)
            {
        
                LED2_On();
                appData.state = APP_STATE_GET_CONSOLE_HANDLE;
            }
            break;
            
        case APP_STATE_GET_CONSOLE_HANDLE:
            /* Get handles to both the USB console instances */
            appData.consoleHandle = SYS_CONSOLE_HandleGet(SYS_CONSOLE_INDEX_0);

            if (appData.consoleHandle != SYS_CONSOLE_HANDLE_INVALID)
            {
                RGB_LED_B_On();
                appData.state = APP_STATE_DEMONSTRATE_DEBUG_APIS;
                
            }
            else
            {
                appData.state = APP_STATE_ERROR;;
                
            }
            break; 
            
         case APP_STATE_DEMONSTRATE_DEBUG_APIS:
             SYS_CONSOLE_PRINT("ip address: %s\r\n", ip);
            appData.state = APP_STATE_READ_FROM_CONSOLE;
            break;
            
        case APP_STATE_ERROR:
        default:
            break;
    }
}