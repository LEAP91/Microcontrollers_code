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
// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

typedef enum
{
    APP_STATE_WAIT_UART_CONSOLE_CONFIGURED = 0,
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

