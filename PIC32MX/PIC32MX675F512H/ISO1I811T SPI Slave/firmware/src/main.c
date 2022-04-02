
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>

#define RX_BUFFER_SIZE 256

char messageStart[] = "**** uart test ****\r\n";
char result[] = "The result is 5\r\n";

uint8_t out = 0xf0;
uint8_t input;

uint8_t decimal = 5;
char buffer[50];

uint8_t tx_buffer[2];
uint8_t rx_buffer[1];
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    tx_buffer[0] = 0;
    tx_buffer[1] = 0;
    
    UART1_Write(&messageStart, sizeof(messageStart));
    
    //SPI4_Write(&out, 1);
    SPI2_Read(&input, 1);
    //SPI2_WriteRead(&tx_buffer, 1, &rx_buffer, 1);
    while(SPI2_IsBusy());
    
    sprintf(buffer,"%d",input);
    UART1_Write(&buffer, sizeof(buffer)); 
    
    if(input == 16)
    {
      UART1_Write(&result, sizeof(result));  
    }
    
    if(rx_buffer[0] == 16)
    {
      UART1_Write(&result, sizeof(result));  
    }
    if(input == 8)
    {
      UART1_Write(&result, sizeof(result));  
    }
    
    //UART1_Write(&result, sizeof(result)); 
    //sprintf(buffer,"%d",decimal);
    
    //UART1_Write(&buffer, sizeof(buffer));  
    
      
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

