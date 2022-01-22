
#include "app.h"
#include "system/debug/sys_debug.h"
#include "Dev_Board.h"
#include "configuration.h"
#include <string.h>

#define UART_CONSOLE_READ_BUFFER_SIZE            10
APP_DATA CACHE_ALIGN appData;

static uint32_t erase_index = 0;
static uint32_t write_index = 0;

uint8_t uart_console_read_buffer[UART_CONSOLE_READ_BUFFER_SIZE];

void APP_Initialize ( void )
{
    uint32_t i = 0;
     /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
    for (i = 0; i < BUFFER_SIZE; i++)
        appData.writeBuffer[i] = i;
    
    BLUE_ON;
    
}


void APP_Tasks ( void )
{
    DRV_SST26_TRANSFER_STATUS transferStatus = DRV_SST26_TRANSFER_ERROR_UNKNOWN;
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
                appData.state = APP_STATE_OPEN_DRIVER;
            }
            else
            {
                appData.state = APP_STATE_ERROR;
            }
            break;
        }
        
        case APP_STATE_OPEN_DRIVER:
        {
            appData.handle = DRV_SST26_Open(DRV_SST26_INDEX, DRV_IO_INTENT_READWRITE);

            if (appData.handle != DRV_HANDLE_INVALID)
            {
                SYS_CONSOLE_MESSAGE("Valid Driver Handle\r\n");
                appData.state = APP_STATE_GEOMETRY_GET;
            }

            break;
        }
        
        case APP_STATE_GEOMETRY_GET:
        {
            if (DRV_SST26_GeometryGet(appData.handle, &appData.geometry) != true)
            {
                appData.state = APP_STATE_ERROR;
                break;
            }
            SYS_CONSOLE_MESSAGE("Geometry updated..\r\n");
            erase_index = 0;
            write_index = 0;
            appData.state = APP_STATE_ERASE_FLASH;

            break;
        }

        case APP_STATE_ERASE_FLASH:
        {
            if (DRV_SST26_SectorErase(appData.handle, (MEM_ADDRESS + erase_index)) != true)
            {
                appData.state = APP_STATE_ERROR;
            }
            SYS_CONSOLE_MESSAGE("Flash earse success..\r\n");
            appData.state = APP_STATE_ERASE_WAIT;

            break;
        }

        case APP_STATE_ERASE_WAIT:
        {
            transferStatus = DRV_SST26_TransferStatusGet(appData.handle);

            if(transferStatus == DRV_SST26_TRANSFER_COMPLETED)
            {
                erase_index += appData.geometry.erase_blockSize;

                if (erase_index < BUFFER_SIZE)
                {
                    appData.state = APP_STATE_ERASE_FLASH;
                }
                else
                {
                    appData.state = APP_STATE_WRITE_MEMORY;
                }
            }
            else if (transferStatus == DRV_SST26_TRANSFER_ERROR_UNKNOWN)
            {
                appData.state = APP_STATE_ERROR;
            }
            break;
        }

        case APP_STATE_WRITE_MEMORY:
        {
            if (DRV_SST26_PageWrite(appData.handle, (uint32_t *)&appData.writeBuffer[write_index], (MEM_ADDRESS + write_index)) != true)
            {
                appData.state = APP_STATE_ERROR;
                break;
            }

            appData.state = APP_STATE_WRITE_WAIT;

            break;
        }

        case APP_STATE_WRITE_WAIT:
        {
            transferStatus = DRV_SST26_TransferStatusGet(appData.handle);

            if(transferStatus == DRV_SST26_TRANSFER_COMPLETED)
            {
                write_index += appData.geometry.write_blockSize;

                if (write_index < BUFFER_SIZE)
                {
                    appData.state = APP_STATE_WRITE_MEMORY;
                }
                else
                {
                    SYS_CONSOLE_MESSAGE("Flash write success..\r\n");
                    appData.state = APP_STATE_READ_MEMORY;
                }
            }
            else if (transferStatus == DRV_SST26_TRANSFER_ERROR_UNKNOWN)
            {
                appData.state = APP_STATE_ERROR;
            }

            break;
        }

        case APP_STATE_READ_MEMORY:
        {
            if (DRV_SST26_Read(appData.handle, (uint32_t *)&appData.readBuffer, BUFFER_SIZE, MEM_ADDRESS) != true)
            {
                appData.state = APP_STATE_ERROR;
            }
            else
            {
                appData.state = APP_STATE_READ_WAIT;
            }

            break;
        }

        case APP_STATE_READ_WAIT:
        {
            transferStatus = DRV_SST26_TransferStatusGet(appData.handle);

            if(transferStatus == DRV_SST26_TRANSFER_COMPLETED)
            {
                SYS_CONSOLE_MESSAGE("Memory read success...\r\n");
                appData.state = APP_STATE_VERIFY_DATA;
            }
            else if (transferStatus == DRV_SST26_TRANSFER_ERROR_UNKNOWN)
            {
                appData.state = APP_STATE_ERROR;
            }

            break;
        }

        case APP_STATE_VERIFY_DATA:
        {
            if (!memcmp(appData.writeBuffer, appData.readBuffer, BUFFER_SIZE))
            {
                appData.state = APP_STATE_SUCCESS;
            }
            else
            {
                appData.state = APP_STATE_ERROR;
            }

            break;
        }

        case APP_STATE_SUCCESS:
        {
            DRV_SST26_Close(appData.handle);
            SYS_CONSOLE_MESSAGE("Success....!\r\n");
            GREEN_ON;
            
            break;
        }

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
