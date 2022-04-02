/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>      // Defines NULL
#include <stdbool.h>     // Defines true
#include <stdlib.h>      // Defines EXIT_FAILURE
#include "definitions.h" //
#include "Dev_Board.h"   // SYS function prototypes

int main(void)
{
  /* Initialize all modules */
  SYS_Initialize(NULL);

  // next, check the cause of the Reset
  if (RCON & 0x0003)
  {
    // execute a Power-on Reset handler
    // ...
    GREEN_ON;
  }
  else if (RCON & 0x0002)
  {
    // execute a Brown-out Reset handler
    // ...
    LED1_ON;
  }
  else if (RCON & 0x0080)
  {
    // execute a Master Clear Reset handler
    // ...
    LED2_ON;
  }
  else if (RCON & 0x0040)
  {
    // execute a Software Reset handler
    // ...
    LED3_ON;
  }
  else if (RCON & 0x0200)
  {
    // execute a Configuration Mismatch Reset handler
    // ...
    RED_ON;
  }
  else if (RCON & 0x0010)
  {
    // execute Watchdog Time-out Reset handler
    // ...
    BLUE_ON;
  }
  else if (RCON & 0x0020)
  {
    // execute Deadman Timer time-out Reset handler
    // ...
    BLUE_ON;
  }
  RCON = 0;

  while (true)
  {
    /* Maintain state machines of all polled MPLAB Harmony modules. */
    SYS_Tasks();
  }

  /* Execution should not come here during normal operation */

  return (EXIT_FAILURE);
}

/*******************************************************************************
 End of File
*/
