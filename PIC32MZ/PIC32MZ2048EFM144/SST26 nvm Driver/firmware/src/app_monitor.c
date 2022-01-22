
#include "app_monitor.h"
#include "app_sst26.h"
#include "Dev_Board.h"

APP_MONITOR_DATA app_monitorData;

void APP_MONITOR_Initialize ( void )
{
    
}

void APP_MONITOR_Tasks ( void )
{
    if (appSST26Data.state == APP_SST26_STATE_SUCCESS)
    {
        LED3_ON;
    }
}
