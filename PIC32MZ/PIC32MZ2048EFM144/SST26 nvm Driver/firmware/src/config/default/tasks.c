
#include "configuration.h"
#include "definitions.h"

void SYS_Tasks ( void )
{
    /* Maintain system services */
  
    /* Maintain Device Drivers */
    DRV_MEMORY_Tasks(sysObj.drvMemory0);

    /* Maintain Middleware & Other Libraries */


    /* Maintain the application's state machine. */
        /* Call Application task APP_SST26. */
    APP_SST26_Tasks();
    /* Call Application task APP_MONITOR. */
    APP_MONITOR_Tasks();

}

/*******************************************************************************
 End of File
 */

