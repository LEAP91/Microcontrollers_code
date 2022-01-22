/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_Initialize" and "APP_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

#ifndef _APP_H
#define _APP_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "system/console/sys_console.h"
#include "driver/sst26/drv_sst26.h"
// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif
    
#define BUFFER_SIZE     8192
#define MEM_ADDRESS     0x0

typedef enum
{
    APP_STATE_WAIT_UART_CONSOLE_CONFIGURED = 0,
        /* Open the Driver */
    APP_STATE_OPEN_DRIVER,

    /* Get Device Geometry */
    APP_STATE_GEOMETRY_GET,

    /* Erase Flash */
    APP_STATE_ERASE_FLASH,

    /* Erase Wait */
    APP_STATE_ERASE_WAIT,

    /* Write to Memory */
    APP_STATE_WRITE_MEMORY,

    /* Write Wait */
    APP_STATE_WRITE_WAIT,

    /* Read From Memory */
    APP_STATE_READ_MEMORY,

    /* Read Wait */
    APP_STATE_READ_WAIT,

    /* Verify Data Read */
    APP_STATE_VERIFY_DATA,

    /* The app idles */
    APP_STATE_SUCCESS,
    
    APP_STATE_GET_CONSOLE_HANDLE,
    APP_STATE_DEMONSTRATE_DEBUG_APIS,
    APP_STATE_READ_FROM_CONSOLE,
    APP_STATE_WAIT_READ_COMPLETE,
    APP_STATE_WRITE_RECEIVED_DATA,
    APP_STATE_WAIT_WRITE_BUFFER_EMPTY,
    APP_STATE_ECHO_TEST,
    APP_STATE_CONSOLE_READ_WRITE,
    APP_STATE_ERROR,

} APP_STATES;

typedef struct
{
    /* The application's current state */
    APP_STATES state;
    SYS_CONSOLE_HANDLE consoleHandle;
    /* TODO: Define any additional data used by the application. */
    /* Driver Handle */
    DRV_HANDLE handle;

    /* SST26 Device Geometry */
    DRV_SST26_GEOMETRY geometry;

    /* Jedec-ID*/
    uint32_t jedec_id;

    /* Read Buffer */
    uint8_t readBuffer[BUFFER_SIZE];

    /* Write Buffer*/
    uint8_t writeBuffer[BUFFER_SIZE];

} APP_DATA;

void APP_Initialize ( void );

void APP_Tasks( void );

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_H */

/*******************************************************************************
 End of File
 */

