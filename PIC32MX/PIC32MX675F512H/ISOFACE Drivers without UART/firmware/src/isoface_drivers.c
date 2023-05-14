#include "definitions.h"
#include "isoface_drivers.h"
#include <stdbool.h>

DIGITAL_OUTPUTS digital_outputs;
uint8_t input_buffer;
uint8_t in;

void outputs(uint8_t output, bool state)
{
    SPI_DO_CS_Clear();
    Nop();
    switch (output)
    {
    case 0:
        if (state)
        {
            digital_outputs.bit.out0 = 1;
            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
                ;
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
            digital_outputs.bit.out3 = 1;

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
    case 4:
        if (state)
        {
            digital_outputs.bit.out4 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out4 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;
    case 5:
        if (state)
        {
            digital_outputs.bit.out5 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out5 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;
    case 6:
        if (state)
        {
            digital_outputs.bit.out6 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out6 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;
    case 7:
        if (state)
        {
            digital_outputs.bit.out7 = 1;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }

        else
        {
            digital_outputs.bit.out7 = 0;

            SPI4_Write(&digital_outputs.buffer, 1);
            while (SPI4_IsBusy())
            {
            }
        }
        break;

    default:
        break;
    }
    SPI_DO_CS_Set();
    Nop();
}

bool inputs(uint8_t input)
{
    Uc_SPI_DI_CS_Clear();
    switch (input)
    {
    case 0:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 0) & 1U;
        break;

    case 1:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 1) & 1U;
        break;
    case 2:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 2) & 1U;
        break;
    case 3:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 3) & 1U;
        break;
    case 4:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 4) & 1U;
        break;
    case 5:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 5) & 1U;
        break;
    case 6:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 6) & 1U;
        break;
    case 7:
        SPI4_Read(&input_buffer, 1);
        while (SPI4_IsBusy())
        {
        }
        in = (input_buffer >> 7) & 1U;
        break;

    default:
        break;
    }
    Uc_SPI_DI_CS_Set();
    return in;
}
