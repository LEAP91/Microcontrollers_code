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
#include "definitions.h" // SYS function prototypes
#include "Dev_Board.h"

bool bootloader_Trigger(void)
{
  uint32_t i;

  // Cheap delay. This should give at leat 1 ms delay.
  for (i = 0; i < 2000; i++)
  {
    asm("nop");
  }

  /* Check for Switch press to enter Bootloader */
  if (SW1_Get() == 0)
  {
    return true;
  }

  return false;
}

int main(void)
{

  /* Initialize all modules */
  SYS_Initialize(NULL);
  //LED1_ON;
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
