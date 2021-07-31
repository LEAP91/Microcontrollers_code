/* This modele is meant to load all the default
 tcp/ip settings from NVM.
 Hence when the board is initialized this code should be ran
 to load all settings into NVM*/


#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "config/default/peripheral/nvm/plib_nvm.h"

#define READ_WRITE_SIZE         (NVM_FLASH_PAGESIZE)
//IP Address buffer size
#define BUFFER_SIZE             16
//#define APP_FLASH_ADDRESS       (NVM_FLASH_START_ADDRESS + (NVM_FLASH_SIZE / 2))
#define TCPIP_NETWORK_DEFAULT_IP_ADDRESS_IDX0			"192.168.100.10"


uint32_t writeData[BUFFER_SIZE] CACHE_ALIGN;
uint32_t readData[BUFFER_SIZE];
uint32_t address = NVM_FLASH_START_ADDRESS;

    
static volatile bool xferDone = false;

static void eventHandler(uintptr_t context)
{
    xferDone = true;
}

int write_defaults (void)
{
    
    uint8_t *writePtr = (uint8_t *)writeData;
    uint32_t i = 0;
    
    NVM_CallbackRegister(eventHandler, (uintptr_t)NULL);
    while(NVM_IsBusy() == true);
    while(xferDone == false);
    xferDone = false;
    for (i=0; i<sizeof(writeData); i++)
    {
        
        NVM_WordWrite((uint32_t *)writePtr, address);

        while(xferDone == false);

        xferDone = false; 
        address += 8;
        
    }
    
}

