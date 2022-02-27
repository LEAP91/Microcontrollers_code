#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "max22007_API.h"
#include "system/console/sys_console.h"

#define TX_NUM_BYTES     4
#define RX_NUM_BYTES     2

uint8_t dac_cmd[4] =
    {
        0x00, // DAC Register Address + Read/write operation, Read=1 | write=0
        0x00, // MSB payload to send to DAC
        0x00, // LSB payload to send to DAC
        0,    // CRC value
};

uint8_t *dac_cmd_ptr = dac_cmd;

// Calculate crc value and append to DAC cmd
uint8_t crc8_MAXIM(uint8_t *data, uint8_t len)
{

    uint8_t crc, i;
    crc = 0x00;

    while (len--)
    {

        crc ^= *data++;
        for (i = 0; i < 8; i++)
        {

            if (crc & 0x01)
            {

                crc = (crc >> 1) ^ 0x8c;
            }
            else
                crc >>= 1;
        }
    }
    return crc;
}

void revision_id(uint8_t *dac_cmd_ptr)
{
    SYS_CONSOLE_MESSAGE("Read DAC revision ID...\n\r");
    dac_cmd[0] = (0x00 << 1) | (0x01);
    dac_cmd[1] = 0x00;
    dac_cmd[2] = 0x00;
    dac_cmd[4] = crc8_MAXIM(dac_cmd_ptr, 3);
    
    memcpy(dac_cmd, txBuffer, sizeof(dac_cmd));
    
     /* Submit Write-Read Request */
    SPI4_WriteRead(&txBuffer, TX_NUM_BYTES, &rxBuffer, RX_NUM_BYTES);
    
    /* Poll and wait for the transfer to complete */
    while(SPI4_IsBusy());
    
}
