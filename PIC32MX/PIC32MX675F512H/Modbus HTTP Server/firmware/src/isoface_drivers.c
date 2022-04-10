#include "definitions.h"
#include "isoface_drivers.h"
#include <stdbool.h>

DIGITAL_OUTPUTS digital_outputs;
uint8_t input_buffer;
uint8_t in;

//Function to activate an output for ISO1H812G
void outputs(uint8_t output, bool state)
{
    switch (output)
    {
    case 0:
        if (state)
        {
            digital_outputs.bit.out0 = 0x03;
            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy());
        }

        else
        {
            digital_outputs.bit.out0 = 0;
            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;

    case 1:
        if (state)
        {
            digital_outputs.bit.out1 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out1 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;

    case 2:
        if (state)
        {
            digital_outputs.bit.out2 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out2 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;

    case 3:
        if (state)
        {
            digital_outputs.bit.out3 = 0xf;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out3 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;

    default:
        break;
    }
}

//Function to read a single input for ISO1I811T
//return a boolean 1 or 0
bool inputs(uint8_t input)
{
    switch (input)
    {
    case 0:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 0) & 1U;
        break;

    case 1:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 1) & 1U;
        break;
    case 2:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 2) & 1U;
        break;
    case 3:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 3) & 1U;
        break;
    case 4:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 4) & 1U;
        break;
    case 5:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 5) & 1U;
        break;
    case 6:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 6) & 1U;
        break;
    case 7:
        SPI2_Read(&input_buffer, 1);
        while (SPI2_IsBusy())
        {
        }
        in = (input_buffer >> 7) & 1U;
        break;

    default:
        break;
    }

    return in;
}
