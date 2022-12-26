#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system/console/sys_console.h"
#include "definitions.h"
#include "MAX22007_api.h"
#include <string.h>

// *** DEFINITIONS **/

#define TX_NUM_BYTES 4
#define RX_NUM_BYTES 4

// Replace depending on the SPI module selected
#define SPI_WRITE(a, b) SPI4_Write(a, b)
#define SPI_IsBusy SPI4_IsBusy()
#define SPI_WriteRead(v, x, y, z) SPI4_WriteRead(v, x, y, z)

bool crc_Enabled = true;
uint8_t crc_result;
uint8_t crc_calc;
uint8_t crc_Buffer[3];
uint16_t DAC_LSB_value;

uint8_t txBuffer[TX_NUM_BYTES];
uint8_t rxBuffer[RX_NUM_BYTES];

uint8_t dac_cmd[4] =
    {
        0x00, // // CRC value
        0x00, // LSB payload to send to DAC
        0x00, // MSB payload to send to DAC
        0,    // DAC Register Address + Read/write operation, Read=1 | write=0

};

uint8_t *dac_cmd_ptr = dac_cmd;
uint8_t *crc_ptr = crc_Buffer;

// *** End of definitions ***

// *** FUNCTIONS ***

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

//********************************************************************
//*
//* Function: MAX22007_read_register
//* Description: Read one Register from MAX22007
//*
//* Input: Register-Address (take from definitions in header-file)
//* Output: 16bit register content
//*
//* if CRC is enabled, then crc8-Command is required
//*
//********************************************************************/
uint32_t MAX22007_read_register(Register_address address)
{
    uint32_t result;
    dac_cmd[0] = 0x00;
    dac_cmd[1] = 0x00;
    dac_cmd[2] = 0x00;

    // SYS_CONSOLE_MESSAGE("Read register function called\n\r");
    if (crc_Enabled == false)
    {
        dac_cmd[4] = (address << 1) + 0x01;
        memcpy(txBuffer, dac_cmd, 4);
        while (SPI_IsBusy)
            ;
        SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
        while (SPI_IsBusy)
            ;
    }
    else
    {
        dac_cmd[3] = (address << 1) + 0x01;
        memcpy(txBuffer, dac_cmd, 4);

        while (SPI_IsBusy)
            ;
        SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
        while (SPI_IsBusy)
            ;

        crc_Buffer[0] = (address << 1) + 0x01;
        crc_Buffer[1] = rxBuffer[2];
        crc_Buffer[2] = rxBuffer[1];

        crc_result = rxBuffer[0];
        crc_calc = crc8_MAXIM(crc_ptr, 3); // read the CRC

        if (crc_calc != crc_result)
        {
            SYS_CONSOLE_MESSAGE("Wrong CRC val\n\r");
            return 0xfffffffe; // return a 32 bit value to flag an error
        }
    }
    result = (((uint16_t)rxBuffer[2]) << 8) + (rxBuffer[1]); // Get 16 bit register result

    return result;
}

//********************************************************************
//*
//* Function: MAX22007_write_register
//* Description: Write one Register to MAX22007
//*
//* Input: Register-Address (take from definitions in header-file)
//* 16bit data (new register content)
//*
//********************************************************************/
void MAX22007_write_register(Register_address address, uint16_t data)
{
    bool reqAccepted;
    // SYS_CONSOLE_PRINT("Write register function called:\n\r");
    dac_cmd[3] = ((uint8_t)address) << 1;
    dac_cmd[2] = (uint8_t)(data >> 8);
    dac_cmd[1] = (uint8_t)data;

    if (crc_Enabled == false)
    {
        memcpy(txBuffer, dac_cmd + 1, 3);
        SPI_WRITE(&txBuffer, 3);
    }
    else
    {
        crc_Buffer[0] = dac_cmd[3];
        crc_Buffer[1] = dac_cmd[2];
        crc_Buffer[2] = dac_cmd[1];
        dac_cmd[0] = crc8_MAXIM(crc_ptr, 3);

        memcpy(txBuffer, dac_cmd, 4);

        while (SPI_IsBusy)
            ;
        reqAccepted = SPI_WRITE(&txBuffer, 4);
        while (SPI_IsBusy)
            ;
        while (!reqAccepted)
            ;
    }
}

// Function: MAX22007_Mode_Set
//  Description: Sets up MAX22007 Mode for one of the 4 Channels
//
//  Input: mode: Desired Mode
//  Channel: Desired Channel
//  Output: None (The selected channel of MAX22007 will be setup by this routine)
//
//  ********************************************************************
void MAX22007_Mode_Set(uint8_t Channel, AOut_Mode mode)
{
    // SYS_CONSOLE_MESSAGE("Mode set called...\n\r");
    //  Set AO Mode (Register 0x05: CHANNEL_MODE)
    uint16_t previous_mode = MAX22007_read_register(CHANNEL_MODE);

    uint16_t new_mode = (uint16_t)previous_mode | 0x0F00;
    switch (Channel)
    {
    case 0:
        if (mode == high_impedance)
        {
            new_mode = (new_mode & 0xeeff); // High-Impedance, set to Voltage Mode and Power-Off - Channel 0
        }
        if (mode == AO_10V)
        {
            new_mode = (new_mode & 0xefff); // Voltage Output, set CHNL_MODE to 1 for this Channel 0
            new_mode = (new_mode | 0x0100); // make sure the Channel is enabled Channel 0
        }
        if (mode == AO_20mA)
        {
            new_mode = (new_mode | 0x1000); // Current Output, set CHNL_MODE to 1 for this Channel 0
            new_mode = (new_mode | 0x0100); // make sure the Channel is enabled Channel 0
        }
        break;

    case 1:
        if (mode == high_impedance)
        {
            new_mode = (new_mode & 0xddff); // High-Impedance, set to Voltage Mode and Power-Off - Channel 1
        }
        if (mode == AO_10V)
        {
            new_mode = (new_mode & 0xdfff); // Voltage Output, set CHNL_MODE to 1 for this Channel 1
            new_mode = (new_mode | 0x0200); // make sure the Channel is enabled Channel 1
        }
        if (mode == AO_20mA)
        {
            new_mode = (new_mode | 0x2000); // Current Output, set CHNL_MODE to 1 for this Channel 1
            new_mode = (new_mode | 0x0200); // make sure the Channel is enabled Channel 1
        }
        break;

    case 2:
        if (mode == high_impedance)
        {
            new_mode = (new_mode & 0xbbff); // High-Impedance, set to Voltage Mode and Power-Off - Channel 2
        }
        if (mode == AO_10V)
        {
            new_mode = (new_mode & 0xbfff); // Voltage Output, set CHNL_MODE to 1 for this Channel 2
            new_mode = (new_mode | 0x0400); // make sure the Channel is enabled Channel 2
        }
        if (mode == AO_20mA)
        {
            new_mode = (new_mode | 0x4000); // Current Output, set CHNL_MODE to 1 for this Channel 2
            new_mode = (new_mode | 0x0400); // make sure the Channel is enabled Channel 2
        }
        break;

    case 3:
        if (mode == high_impedance)
        {
            new_mode = (new_mode & 0x77ff); // High-Impedance, set to Voltage Mode and Power-Off - Channel 3
        }
        if (mode == AO_10V)
        {
            new_mode = (new_mode & 0x7fff); // Voltage Output, set CHNL_MODE to 1 for this Channel 3
            new_mode = (new_mode | 0x0800); // make sure the Channel is enabled Channel 3
        }
        if (mode == AO_20mA)
        {
            new_mode = (new_mode | 0x8000); // Current Output, set CHNL_MODE to 1 for this Channel 3
            new_mode = (new_mode | 0x0800); // make sure the Channel is enabled Channel 3
        }
        break;
    }

    SYS_CONSOLE_PRINT("Previous mode: %x\r\n", previous_mode);
    SYS_CONSOLE_PRINT("Mode set register value: %x\r\n", new_mode);
    MAX22007_write_register(CHANNEL_MODE, new_mode);
}

// ********************************************************************
//
// Function: MAX22007_convert_Voltage_to_LSB
// Description: Converts a voltage to an LSB value for the DAC
//
// Input: float: Voltage
// Output: UInt16 LSB Value for the DAC
//
// ********************************************************************
uint16_t MAX22007_convert_Voltage_to_LSB(float voltage)
{
    // SYS_CONSOLE_MESSAGE("Convert voltage to lsb func called..\n\r");
    uint16_t new_hex_value = 0;
    float result = 0;
    float phy_AO_10V_factor = (float)12.5 / (float)4095;
    // check for errors
    if (voltage > (float)10.0)
    {
        SYS_CONSOLE_MESSAGE("voltage out of range");
        return 0xfffe; // return out of range value to highlight there was an error
    }
    if (voltage < 0)
    {
        return 0xfffe;
    } // return out of range value to highlight there was an error
    // convert voltage to LSB value
    result = (voltage / phy_AO_10V_factor);
    // SYS_CONSOLE_PRINT("LSB factor: %X\n\r", phy_AO_10V_factor);
    // SYS_CONSOLE_PRINT("LSB Result: %X\n\r", result);
    new_hex_value = (uint16_t)result;
    return new_hex_value;
}

// ********************************************************************
//
// Function: MAX22007_convert_Current_to_LSB
// Description: Converts a current in mA to an LSB value for the DAC
//
// Input: float: Current in mA
// Output: UInt16 LSB Value for the DAC
//
// ********************************************************************
uint16_t MAX22007_convert_Current_to_LSB(float current_mA)
{
    uint16_t new_hex_value = 0;
    float result = 0;
    float phy_AO_20mA_factor = (float)20 / (float)4095;
    // check for errors
    if (current_mA > 20)
    {
        return 0xfffe;
    } // return out of range value to highlight there was an error
    if (current_mA < 0)
    {
        return 0xfffe;
    } // return out of range value to highlight there was an error
    // convert voltage to LSB value
    result = (current_mA / phy_AO_20mA_factor);
    new_hex_value = (uint16_t)result;
    return new_hex_value;
}

// ********************************************************************
//
// Function: MAX22007_DAC_Set_LSB
// Description: Writes a new LSB value to the DAC,
// assuming it is already setup in a specific mode, use DAC_Setup first
// If LDAC-pin is high, it must be toggled after setting up update the output
//
// Input: new DAC value in LSB
// Output: None
//
// ********************************************************************
void MAX22007_Set_DAC(uint8_t Channel, uint16_t LSB_code)
{
    // SYS_CONSOLE_MESSAGE("Set DAC func called...\n\r");
    uint16_t DAC_out_register = (uint16_t)(LSB_code << 4); // Shift bits to match with register
    switch (Channel)
    {
    case 0:
        MAX22007_write_register(CHANNEL0_DATA, DAC_out_register); // Write AO Data register CH0
        break;
    case 1:
        MAX22007_write_register(CHANNEL1_DATA, DAC_out_register); // Write AO Data register CH1
        break;
    case 2:
        MAX22007_write_register(CHANNEL2_DATA, DAC_out_register); // Write AO Data register CH2
        break;
    case 3:
        MAX22007_write_register(CHANNEL3_DATA, DAC_out_register); // Write AO Data register CH3
        break;
    }
}