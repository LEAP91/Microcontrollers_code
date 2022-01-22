/* ************************************************************************** */
/** Descriptive File Name
  @Description
 PIC32MZ Curiosity development board leds and switches definitions
 */
/* ************************************************************************** */

#ifndef _DEV_BOARD_H  /* Guard against multiple inclusion */
#define _DEV_BOARD_H

#ifdef __cplusplus
extern "C" {
#endif

#define LED1_ON LED1_Clear();
#define LED1_OFF LED1_Set();

#define LED2_ON LED2_Clear();
#define LED2_OFF LED2_Set();

#define LED3_ON LED3_Clear();
#define LED3_OFF LED3_Set();

#define GREEN_ON GREEN_Clear();
#define GREEN_OFF GREEN_Set();

#define RED_ON RED_Clear();
#define RED_OFF RED_Set();

#define BLUE_ON BLUE_Clear();
#define BLUE_OFF BLUE_Set();

#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
