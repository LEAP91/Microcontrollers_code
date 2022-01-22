
#ifndef APP_SST26_H
#define APP_SST26_H


#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "driver/memory/drv_memory.h"
#include "system/console/sys_console.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif


/* Will Erase, Write and Read into 4 Sectors of 4KB each*/
#define SST26_BUFFER_SIZE           (16384U)

#define GEOMETRY_TABLE_READ_ENTRY   (0)
#define GEOMETRY_TABLE_WRITE_ENTRY  (1)
#define GEOMETRY_TABLE_ERASE_ENTRY  (2)

#define BLOCK_START                 0x0

// *****************************************************************************

typedef enum
{
    APP_STATE_GET_CONSOLE_HANDLE,
    APP_STATE_WAIT_UART_CONSOLE_CONFIGURED,
    /* Open the flash driver */
    APP_SST26_STATE_OPEN_DRIVER,

    /* Get the geometry details */
    APP_SST26_STATE_GEOMETRY_GET,

    /* Erase Flash */
    APP_SST26_STATE_ERASE_FLASH,

    /* Write to Memory */
    APP_SST26_STATE_WRITE_MEMORY,

    /* Read From Memory */
    APP_SST26_STATE_READ_MEMORY,

    /* Wait for transfer to complete */
    APP_SST26_STATE_XFER_WAIT,

    /* Verify Data Read */
    APP_SST26_STATE_VERIFY_DATA,

    /* Transfer success */
    APP_SST26_STATE_SUCCESS,

    /* An app error has occurred */
    APP_SST26_STATE_ERROR

} APP_SST26_STATES;

// *****************************************************************************

typedef struct
{
    SYS_CONSOLE_HANDLE consoleHandle;
    /* Application's current state */
    APP_SST26_STATES state;

    /* Driver Handle */
    DRV_HANDLE memoryHandle;

    /* Application transfer status */
    volatile bool xfer_done;

    /* Erase/Write/Read Command Handles*/
    DRV_MEMORY_COMMAND_HANDLE eraseHandle;
    DRV_MEMORY_COMMAND_HANDLE writeHandle;
    DRV_MEMORY_COMMAND_HANDLE readHandle;

    /* Number of read blocks*/
    uint32_t numReadBlocks;

    /* Number of read blocks*/
    uint32_t numWriteBlocks;

    /* Number of read blocks*/
    uint32_t numEraseBlocks;

    /* Read Buffer */
    uint8_t readBuffer[SST26_BUFFER_SIZE];

    /* Write Buffer*/
    uint8_t writeBuffer[SST26_BUFFER_SIZE];
} APP_SST26_DATA;

extern APP_SST26_DATA appSST26Data;

void APP_SST26_Initialize ( void );

void APP_SST26_Tasks( void );


#endif /* APP_SST26_H */

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END
