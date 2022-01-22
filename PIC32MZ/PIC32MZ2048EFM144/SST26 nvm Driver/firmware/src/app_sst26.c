
#include "app_sst26.h"
#include "Dev_Board.h"
#include "system/debug/sys_debug.h"
#include "configuration.h"

SYS_MEDIA_GEOMETRY *geometry = NULL;


APP_SST26_DATA CACHE_ALIGN appSST26Data;


void appTransferHandler(DRV_MEMORY_EVENT event, DRV_MEMORY_COMMAND_HANDLE commandHandle, uintptr_t context)
{
    APP_SST26_DATA *app_data = (APP_SST26_DATA *)context;

    switch(event)
    {
        case DRV_MEMORY_EVENT_COMMAND_COMPLETE:
            if (commandHandle == app_data->readHandle)
            {
                appSST26Data.xfer_done = true;
            }
            break;

        case DRV_MEMORY_EVENT_COMMAND_ERROR:
            appSST26Data.state = APP_SST26_STATE_ERROR;
            break;

        default:
            break;
    }
}

void APP_SST26_Initialize ( void )
{
 
    uint32_t i = 0;
    /* Place the App state machine in its initial state. */
    appSST26Data.state = APP_STATE_WAIT_UART_CONSOLE_CONFIGURED;
    
    for (i = 0; i < SST26_BUFFER_SIZE; i++)
        appSST26Data.writeBuffer[i] = i;

}


void APP_SST26_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appSST26Data.state )
    {
        case APP_STATE_WAIT_UART_CONSOLE_CONFIGURED:
          
        {

            if (SYS_CONSOLE_Status(SYS_CONSOLE_INDEX_0) == SYS_STATUS_READY)
            {
                
                appSST26Data.state = APP_STATE_GET_CONSOLE_HANDLE;
            }
            break;
        }
        case APP_STATE_GET_CONSOLE_HANDLE:
        {

            /* Get handles to both the UART console instances */
            appSST26Data.consoleHandle = SYS_CONSOLE_HandleGet(SYS_CONSOLE_INDEX_0);

            if (appSST26Data.consoleHandle != SYS_CONSOLE_HANDLE_INVALID)
            {
                
                appSST26Data.state = APP_SST26_STATE_OPEN_DRIVER;
                SYS_CONSOLE_MESSAGE("SYS Console Init..\n\r");
            }
            else
            {
                appSST26Data.state = APP_SST26_STATE_ERROR;
            }
            break;
        }
        
        case APP_SST26_STATE_OPEN_DRIVER:
        {

            appSST26Data.memoryHandle = DRV_MEMORY_Open(DRV_MEMORY_INDEX_0, DRV_IO_INTENT_READWRITE);
     
            if (DRV_HANDLE_INVALID != appSST26Data.memoryHandle)
            {
                DRV_MEMORY_TransferHandlerSet(appSST26Data.memoryHandle, appTransferHandler, (uintptr_t)&appSST26Data);
                appSST26Data.state = APP_SST26_STATE_GEOMETRY_GET;
                SYS_CONSOLE_MESSAGE("DRV Handle Valid..\n\r");
            }
            else
            {
                break;
            }
        }

        case APP_SST26_STATE_GEOMETRY_GET:
        {
            geometry = DRV_MEMORY_GeometryGet(appSST26Data.memoryHandle);

            if (geometry == NULL)
            {
                appSST26Data.state = APP_SST26_STATE_ERROR;
                break;
            }

            appSST26Data.numReadBlocks  = (SST26_BUFFER_SIZE / geometry->geometryTable[GEOMETRY_TABLE_READ_ENTRY].blockSize);
            appSST26Data.numWriteBlocks = (SST26_BUFFER_SIZE / geometry->geometryTable[GEOMETRY_TABLE_WRITE_ENTRY].blockSize);
            appSST26Data.numEraseBlocks = (SST26_BUFFER_SIZE / geometry->geometryTable[GEOMETRY_TABLE_ERASE_ENTRY].blockSize);
            appSST26Data.state = APP_SST26_STATE_ERASE_FLASH;
        }

        case APP_SST26_STATE_ERASE_FLASH:
        {

            DRV_MEMORY_AsyncErase(appSST26Data.memoryHandle, &appSST26Data.eraseHandle, BLOCK_START, appSST26Data.numEraseBlocks);
            
            if (DRV_MEMORY_COMMAND_HANDLE_INVALID == appSST26Data.eraseHandle)
            {
                SYS_CONSOLE_MESSAGE("Invalid Flash erase cmd handle\n\r");
                appSST26Data.state = APP_SST26_STATE_ERROR;
                break;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("Flash Erase succesfeul..\n\r");
                appSST26Data.state = APP_SST26_STATE_WRITE_MEMORY;
            }
        }

        case APP_SST26_STATE_WRITE_MEMORY:
        {
            DRV_MEMORY_AsyncWrite(appSST26Data.memoryHandle, &appSST26Data.writeHandle, (void *)&appSST26Data.writeBuffer, BLOCK_START, appSST26Data.numWriteBlocks);

            if (DRV_MEMORY_COMMAND_HANDLE_INVALID == appSST26Data.writeHandle)
            {
                SYS_CONSOLE_MESSAGE("Invalid Flash write cmd hangle\n\r");
                appSST26Data.state = APP_SST26_STATE_ERROR;
                break;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("Memory write succesful..\n\r");
                appSST26Data.state = APP_SST26_STATE_READ_MEMORY;
            }
        }

        case APP_SST26_STATE_READ_MEMORY:
        {
            DRV_MEMORY_AsyncRead(appSST26Data.memoryHandle, &appSST26Data.readHandle, (void *)appSST26Data.readBuffer, BLOCK_START, appSST26Data.numReadBlocks);

            if (DRV_MEMORY_COMMAND_HANDLE_INVALID == appSST26Data.readHandle)
            {
                appSST26Data.state = APP_SST26_STATE_ERROR;
                break;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("Memory read success\n\r");
                appSST26Data.state = APP_SST26_STATE_XFER_WAIT;
            }
        }

        case APP_SST26_STATE_XFER_WAIT:
        {
            /* Wait until all the above queued transfer requests are done */
            if(appSST26Data.xfer_done)
            {
                appSST26Data.xfer_done = false;
                appSST26Data.state = APP_SST26_STATE_VERIFY_DATA;
            }

            break;
        }

        case APP_SST26_STATE_VERIFY_DATA:
        {
            if (!memcmp(appSST26Data.writeBuffer, appSST26Data.readBuffer, SST26_BUFFER_SIZE))
            {
                appSST26Data.state = APP_SST26_STATE_SUCCESS;
                SYS_CONSOLE_MESSAGE("Data verification successfu\n\r");
            }
            else
            {
                appSST26Data.state = APP_SST26_STATE_ERROR;
            }

            DRV_MEMORY_Close(appSST26Data.memoryHandle);

            break;
        }

        case APP_SST26_STATE_SUCCESS:
        case APP_SST26_STATE_ERROR:
        default:
        {
            break;
        }
    }
}


