/*******************************************************************************
  ENC28J60 Change Duplex State Machine
  Company:
    Microchip Technology Inc.

  File Name:
    drv_enc28j60_change_duplex_state.c
  Summary:

  Description:
*******************************************************************************/
// DOM-IGNORE-BEGIN
/*****************************************************************************
 Copyright (C) 2015-2018 Microchip Technology Inc. and its subsidiaries.

Microchip Technology Inc. and its subsidiaries.

Subject to your compliance with these terms, you may use Microchip software 
and any derivatives exclusively with Microchip products. It is your 
responsibility to comply with third party license terms applicable to your 
use of third party software (including open source software) that may 
accompany Microchip software.

THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR 
PURPOSE.

IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE 
FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN 
ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, 
THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*****************************************************************************/

// DOM-IGNORE-END
#include "drv_enc28j60_change_duplex_state.h"
#include "../drv_enc28j60_local.h"
#include "drv_enc28j60_running_state.h"
#include "../drv_enc28j60_utils.h"


// ENC28J60 does not support auto HD/FD detection
// this file is not needed
int32_t DRV_ENC28J60_ChgDupStateTask(struct _DRV_ENC28J60_DriverInfo * pDrvInst)
{
    return 0;
}

int32_t DRV_ENC28J60_ChgDupStateEnter(struct _DRV_ENC28J60_DriverInfo * pDrvInst)
{
    return 0;
}

int32_t DRV_ENC28J60_ChgDupStateExit(struct _DRV_ENC28J60_DriverInfo * pDrvInst)
{
    return 0;
}


