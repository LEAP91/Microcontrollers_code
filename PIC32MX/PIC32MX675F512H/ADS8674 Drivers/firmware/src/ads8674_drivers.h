#ifndef _ADS8674_DRIVERS_H /* Guard against multiple inclusion */
#define _ADS8674_DRIVERS_H

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C"
{
#endif

  float read_channel(uint8_t channel);
  uint16_t read_input(uint8_t ch_address[]);
  float convert_LSB_to_voltage(uint16_t reg);
  float convert_LSB_to_current(uint16_t reg);
  void write_channel_range(uint8_t channel, uint8_t range);
  uint8_t read_channel_range(uint8_t channel);
  void channel_samples(uint8_t tx_buff[]);
  void read_ch_threshold();

  /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */