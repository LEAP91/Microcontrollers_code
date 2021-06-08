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

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


uint8_t led1 = 0b11111111;
uint8_t led4 = 0b11110000;
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
/* This function is called after period expires */
void TIMER2_EventHandler(uint32_t status, uintptr_t context)
{
  
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    Out_Dis_Set();
    TMR2_CallbackRegister(TIMER2_EventHandler,(uintptr_t)NULL);
    TMR2_Start();
    SPI4_Write(&led1, 1);
    

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

