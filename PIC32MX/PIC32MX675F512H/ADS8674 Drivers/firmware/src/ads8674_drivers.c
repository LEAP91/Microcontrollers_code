#include "definitions.h"
#include "system/debug/sys_debug.h"
#include "ads8674_drivers.h"
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

// DEFINITIONS
#define TX_NUM_BYTES 4
#define RX_NUM_BYTES 4

// Replace depending on the SPI module selected
#define SPI_WRITE(a, b) SPI4_Write(a, b)
#define SPI_IsBusy SPI4_IsBusy()
#define SPI_WriteRead(v, x, y, z) SPI4_WriteRead(v, x, y, z)
#define while_spi_busy while (SPI_IsBusy)

// Variables
uint8_t txBuffer[TX_NUM_BYTES]; // Buffer for SPI
uint8_t rxBuffer[RX_NUM_BYTES];
uint16_t reg_value;

// Channel Address
uint8_t ch0_address[4] = {0, 0, 0, 0xC0};
uint8_t ch1_address[4] = {0, 0, 0, 0xC4};
uint8_t ch2_address[4] = {0, 0, 0, 0xC8};
uint8_t ch3_address[4] = {0, 0, 0, 0xCC};
uint8_t dummy[4] = {0, 0, 0, 0};

uint8_t STDBY_mode[4] = {0, 0, 0, 0x82};

// ********************************************************************
//
// Function: Read Alarm Threshold Registers
// Description: Reads the selected channel range (Either 2.5V or 1.25)
//
// Input: integer - Channel number (05h, 06h, 07h, 08h)
// Output: 8bit register value (Refer to ADS8674.pptx pg.4)
//          returns 1 = Voltage mode || 2 = Current Mode
// ********************************************************************
void read_ch_threshold()
{
    SPI_ADC_CS_Clear();
    uint8_t addr_buffer[4] = {0, 0, 0, 0};
    uint8_t channel = 0x17;
    addr_buffer[3] = channel;
    // addr_buffer[3] = (addr_buffer[3] << 1) + 0;
    addr_buffer[3] = addr_buffer[3] >> 1;
    // addr_buffer[3] = addr_buffer[3] + 0x80;

    memcpy(txBuffer, addr_buffer, 4);
    while_spi_busy;
    // SYS_CONSOLE_PRINT("SPI Write Read..\r\n");
    SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
    while_spi_busy;

    SYS_CONSOLE_PRINT("read threshold %x\r\n", rxBuffer[0]);
    SYS_CONSOLE_PRINT("read threshold %x\r\n", rxBuffer[1]);
    SYS_CONSOLE_PRINT("read threshold %x\r\n", rxBuffer[2]);
    SYS_CONSOLE_PRINT("read threshold %x\r\n", rxBuffer[3]);
    SPI_ADC_CS_Set();
}

void channel_samples(uint8_t tx_buff[])
{
    float value;
    uint16_t result;

    SPI_ADC_CS_Clear();
    while_spi_busy;
    SPI_WriteRead(&tx_buff, 4, &rxBuffer, 4);
    while_spi_busy;
    SPI_ADC_CS_Set();

    result = (((uint16_t)rxBuffer[1]) << 8) + (rxBuffer[0]);
    value = convert_LSB_to_voltage(result);
    SYS_CONSOLE_PRINT("buffer %x %x\r\n", rxBuffer[0], rxBuffer[1]);
    SYS_CONSOLE_PRINT("ADC Result value %f\r\n", value);
    SYS_CONSOLE_PRINT("***********\r\n");
}

float convert_LSB_to_voltage(uint16_t reg)
{
    float voltage;
    // reg = reg >> 2;
    float float_reg = (float)reg;
    SYS_CONSOLE_PRINT("float %f\r\n", float_reg);

    float phy_AO_10V_factor = (float)10.24 / (float)16383;

    voltage = float_reg * phy_AO_10V_factor;
    return voltage;
}

float convert_LSB_to_current(uint16_t reg)
{
    float current;
    reg = reg >> 4;
    float float_reg = (float)reg;

    float phy_AO_20mA_factor = (float)25 / (float)4095;

    current = float_reg * phy_AO_20mA_factor;
    return current;
}

// ********************************************************************
//
// Function: read channel range
// Description: Reads the selected channel range (Either 2.5V or 1.25)
//
// Input: integer - Channel number (05h, 06h, 07h, 08h)
// Output: 8bit register value (Refer to ADS8674.pptx pg.4)
//          returns 1 = Voltage mode || 2 = Current Mode
// ********************************************************************
uint8_t read_channel_range(uint8_t channel)
{
    SPI_ADC_CS_Clear();
    uint8_t result;
    // Convert channel number to register number for better understending
    channel = channel + 0x05;
    uint8_t addr_buffer[4] = {0, 0, 0, 0};

    addr_buffer[3] = channel;
    addr_buffer[3] = (addr_buffer[3] << 1) + 0;

    memcpy(txBuffer, addr_buffer, 4);
    while_spi_busy;
    // SYS_CONSOLE_PRINT("SPI Write Read..\r\n");
    SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
    while (SPI_IsBusy)
        ;

    result = rxBuffer[1];
    SYS_CONSOLE_PRINT("Range result %x\n\r", result);
    SPI_ADC_CS_Set();
    if (result == 0x05)
    {
        return 1;
    }
    else
    {
        return 2;
    }
}

// ********************************************************************
//
// Function: selects channel range
// Description: selects channel range (Either 2.5V or 1.25)
//
// Input: integer - Channel number (05h, 06h, 07h, 08h)
// Input: integer - Range - 1 for 2.5v, 2 for 1.25, 3 for 0.625
// Output: 8bit value data written to register (Refer to ADS8674.pptx pg.6)
//
// ********************************************************************
void write_channel_range(uint8_t channel, uint8_t range)
{
    SPI_ADC_CS_Clear();
    // uint8_t result;
    // Convert channel number to register number for better understending
    channel = channel + 0x05;
    uint8_t addr_buffer[4] = {0, 0, 0, 0};

    addr_buffer[3] = channel;
    addr_buffer[3] = (addr_buffer[3] << 1) + 1;
    SYS_CONSOLE_PRINT("ADDR BUFFER %x\r\n", addr_buffer[3]);
    // Selects Range
    if (range == 1)
    {
        addr_buffer[2] = 0x05;
    }
    else if (range == 3)
    {
        addr_buffer[2] = 0x07;
    }
    else
    {
        addr_buffer[2] = 0x06;
    }

    memcpy(txBuffer, addr_buffer, 4);
    // while_spi_busy;
    while (SPI_IsBusy)
        ;
    // txBuffer[2] = 0b1101;
    SYS_CONSOLE_PRINT("tx buffer 0%x\r\n", txBuffer[0]);
    SYS_CONSOLE_PRINT("tx buffer 0%x\r\n", txBuffer[1]);
    SYS_CONSOLE_PRINT("tx buffer 0%x\r\n", txBuffer[2]);
    SYS_CONSOLE_PRINT("tx buffer 0%x\r\n", txBuffer[3]);
    SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
    // while_spi_busy;
    while (SPI_IsBusy)
        ;
    SYS_CONSOLE_PRINT("RX Buffer %x\r\n", rxBuffer[0]);
    SYS_CONSOLE_PRINT("RX Buffer %x\r\n", rxBuffer[1]);
    SYS_CONSOLE_PRINT("RX Buffer %x\r\n", rxBuffer[2]);
    SYS_CONSOLE_PRINT("RX Buffer %x\r\n", rxBuffer[3]);
    SPI_ADC_CS_Set();
}

// ********************************************************************
//
// Function: read input
// Description: Reads the analog data in the ads8674 register selected channel
//
// Input: interger - defining channel address
// Output: 16bit register value
//
// ********************************************************************
uint16_t read_input(uint8_t ch_address[])
{
    SPI_ADC_CS_Clear();
    uint16_t result;

    memcpy(txBuffer, ch_address, 4);
    // SYS_CONSOLE_PRINT("TX %x\r\n", txBuffer[0]);
    // SYS_CONSOLE_PRINT("TX %x\r\n", txBuffer[1]);
    // SYS_CONSOLE_PRINT("TX %x\r\n", txBuffer[2]);
    // SYS_CONSOLE_PRINT("TX %x\r\n", txBuffer[3]);
    while_spi_busy;
    // SYS_CONSOLE_PRINT("SPI Write Read..\r\n");
    SPI_WriteRead(&txBuffer, 4, &rxBuffer, 4);
    while_spi_busy;
    SYS_CONSOLE_PRINT("read input %x\r\n", rxBuffer[0]);
    SYS_CONSOLE_PRINT("read input %x\r\n", rxBuffer[1]);
    SYS_CONSOLE_PRINT("read input %x\r\n", rxBuffer[2]);
    SYS_CONSOLE_PRINT("read input %x\r\n", rxBuffer[3]);
    result = (((uint16_t)rxBuffer[1]) << 8) + (rxBuffer[0]);
    SPI_ADC_CS_Set();

    memcpy(txBuffer, dummy, 4);
    uint8_t i;
    for (i = 0; i < 10; i++)
    {
        channel_samples(txBuffer);
    }

    return result;
}

// ********************************************************************
//
// Function: read channels
// Description: Reads the data in the ads8674 register selected channel
//
// Input: interger - defining channel number
// Output: Float - Voltage vala
//
// ********************************************************************
float read_channel(uint8_t channel)
{
    float value;
    uint8_t range = 1;

    switch (channel)
    {
    case 0:
        reg_value = read_input(ch0_address);
        range = read_channel_range(0);
        break;
    case 1:
        reg_value = read_input(ch1_address);
        // range = read_channel_range(1);
        break;
    case 2:
        reg_value = read_input(ch2_address);
        range = read_channel_range(2);
        break;
    case 3:
        reg_value = read_input(ch3_address);
        range = read_channel_range(3);
        break;

    default:
        break;
    }
    // Check if ADC channel is programm to read voltage or current
    if (range == 1)
    {
        value = convert_LSB_to_voltage(reg_value);
        return value;
    }
    else
    {
        value = convert_LSB_to_current(reg_value);
        return value;
    }
}
