#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "config/default/bsp/bsp.h"

#define READ_WRITE_SIZE         (NVM_FLASH_PAGESIZE)
#define BUFFER_SIZE             (READ_WRITE_SIZE / sizeof(uint32_t))

#define APP_FLASH_ADDRESS       (NVM_FLASH_START_ADDRESS + (NVM_FLASH_SIZE / 2))

#define LED_ON                  RGB_LED_G_On()
#define LED_OFF                 RGB_LED_G_Off()
#define LED_TOGGLE              LED1_Toggle

uint32_t writeData[BUFFER_SIZE] CACHE_ALIGN;
uint32_t readData[BUFFER_SIZE];

const char ip_addr[] = "125.125.125.125";

static volatile bool xferDone = false;

static void populate_buffer(void)
{
    uint32_t i = 0;

    for (i = 0; i < BUFFER_SIZE; i++)
    {
        writeData[i] = i;
    }
}

static void eventHandler(uintptr_t context)
{
    xferDone = true;
}

int main ( void )
{
    uint32_t address = APP_FLASH_ADDRESS;
    uint8_t *writePtr = (uint8_t *)writeData;
    uint32_t i = 0;
    strcmp(ip_addr, "test");
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /*Populate random data to programmed*/
    populate_buffer();
    
    NVM_CallbackRegister(eventHandler, (uintptr_t)NULL);
    
    while(NVM_IsBusy() == true);
    
    /* Erase the Page */
    NVM_PageErase(address);
    
    while(xferDone == false);
    
    xferDone = false;

    for (i = 0; i < READ_WRITE_SIZE; i+= NVM_FLASH_ROWSIZE)
    {
        /* Program a row of data */
        NVM_RowWrite((uint32_t *)writePtr, address);

        while(xferDone == false);

        xferDone = false;

        writePtr += NVM_FLASH_ROWSIZE;
        address  += NVM_FLASH_ROWSIZE;
    }
    
    NVM_Read(readData, sizeof(writeData), APP_FLASH_ADDRESS);

    /* Verify the programmed content*/
    if (!memcmp(writeData, readData, sizeof(writeData)))
    {
        LED_ON;
    }
    
    while ( true )
    {
    }

    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}