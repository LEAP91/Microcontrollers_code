/* ************************************************************************** */
#ifndef _MAX22007_API_H
#define _MAX22007_API_H

#include "app.h"
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"

#ifdef __cplusplus
extern "C"
{
#endif
    extern uint16_t DAC_LSB_value;

    uint8_t crc8_MAXIM(uint8_t *data, uint8_t len);
    uint32_t MAX22007_read_register(Register_address address);
    void MAX22007_write_register(Register_address address, uint16_t data);
    void MAX22007_Mode_Set(uint8_t Channel, AOut_Mode mode);
    uint16_t MAX22007_convert_Voltage_to_LSB(float voltage);
    uint16_t MAX22007_convert_Current_to_LSB(float current_mA);
    void MAX22007_Set_DAC(uint8_t Channel, uint16_t LSB_code);

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
