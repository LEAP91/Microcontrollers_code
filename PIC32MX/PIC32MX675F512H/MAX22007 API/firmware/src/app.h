
#ifndef _APP_H
#define _APP_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "system/console/sys_console.h"
// DOM-IGNORE-BEGIN
#ifdef __cplusplus // Provide C++ Compatibility

extern "C"
{

#endif

  typedef enum
  {
    APP_STATE_WAIT_UART_CONSOLE_CONFIGURED = 0,
    APP_STATE_GET_CONSOLE_HANDLE,
    APP_STATE_DEMONSTRATE_DEBUG_APIS,
    APP_STATE_READ_FROM_CONSOLE,
    APP_STATE_WAIT_READ_COMPLETE,
    APP_STATE_WRITE_RECEIVED_DATA,
    APP_STATE_WAIT_WRITE_BUFFER_EMPTY,
    APP_STATE_ECHO_TEST,
    APP_STATE_CONSOLE_READ_WRITE,
    APP_STATE_ERROR,
    APP_STATE_WRITE_DAC,
    APP_STATE_IDLE,

  } APP_STATES;

  typedef struct
  {
    /* The application's current state */
    APP_STATES state;
    SYS_CONSOLE_HANDLE consoleHandle;
    /* TODO: Define any additional data used by the application. */

  } APP_DATA;

  typedef enum
  {
    // All Registers
    REVISION_ID = 0x00,
    STATUS_INTERRUPTS = 0x01,
    INTERRUPT_ENABLE = 0x02,
    CONFIGURATION = 0x03,
    CONTROL = 0x04,
    CHANNEL_MODE = 0x05,
    SOFT_RESET = 0x06,
    CHANNEL0_DATA = 0x07,
    CHANNEL1_DATA = 0x08,
    CHANNEL2_DATA = 0x09,
    CHANNEL3_DATA = 0x0a,
    GPIO_CONTROL = 0x0b,
    GPIO_DATA = 0x0c,
    GPI_EDGE_CTRL = 0x0d,
    GPI_EDGE_STATUS = 0x0e,

  } Register_address;

  typedef enum
  {
    high_impedance = 0,
    AO_10V = 1,
    AO_20mA = 2,
    out_of_range1 = 3,

  } AOut_Mode;

  void APP_Initialize(void);

  void APP_Tasks(void);

// DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
// DOM-IGNORE-END

#endif /* _APP_H */

/*******************************************************************************
 End of File
 */
