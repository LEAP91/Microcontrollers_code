
#ifndef _APP_MONITOR_H
#define _APP_MONITOR_H

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


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

typedef enum
{
    /* Application's state machine's initial state. */
    APP_MONITOR_STATE_INIT=0,
    APP_MONITOR_STATE_SERVICE_TASKS,
    /* TODO: Define states used by the application state machine. */

} APP_MONITOR_STATES;

typedef struct
{
    /* The application's current state */
    APP_MONITOR_STATES state;

    /* TODO: Define any additional data used by the application. */

} APP_MONITOR_DATA;

void APP_MONITOR_Initialize ( void );

void APP_MONITOR_Tasks( void );



#endif /* _APP_MONITOR_H */

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END
