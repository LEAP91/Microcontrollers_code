
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "system/debug/sys_debug.h"

uint8_t reset;
uint8_t *rst_ptr = &reset;

//char messageStart[] = "**** uart test ****\r\n";

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
            //... perform application specific startup tasks
    // next, check the cause of the Reset
    if(RCON & 0x0003)
     {
    // execute a Power-on Reset handler
    // ...
        reset = 3;
    }
     else if(RCON & 0x0002)
     {
    // execute a Brown-out Reset handler
    // ...
         reset = 2;
    }
     else if(RCON & 0x0080)
     {
    // execute a Master Clear Reset handler
    // ...
         reset = 80;
    }
     else if(RCON & 0x0040)
     {
     // execute a Software Reset handler
    // ...
         reset = 40;
    }
     else if (RCON & 0x0200)
     {
    // execute a Configuration Mismatch Reset handler
    // ...
         reset = 200;
    }
    else if (RCON & 0x0010)
     {
    // execute Watchdog Time-out Reset handler
    // ...
        reset = 10;
    }
    else if (RCON & 0x0020)
     {
    // execute Deadman Timer time-out Reset handler
    // ...
        reset = 20;
    }
    SYS_CONSOLE_PRINT("Reset %d\n\r", reset);
    RCON = 0;
    

    while ( true )
    {

    
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

