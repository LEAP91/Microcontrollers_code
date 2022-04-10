
#ifndef _ISOFACE_DRIVERS_H /* Guard against multiple inclusion */
#define _ISOFACE_DRIVERS_H

#include <stdint.h>
#include <stddef.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C"
{
#endif

  typedef union
  {
    uint8_t buffer;
    struct __PACKED
    {
      uint8_t out0 : 2;
      uint8_t out1 : 1;
      uint8_t out2 : 1;
      uint8_t out3 : 4;
    } bit;

  } DIGITAL_OUTPUTS;

  void outputs(uint8_t output, bool state);
  bool inputs(uint8_t input);

  /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */
