#include <stdio.h>

typedef union
{
    signed char value;

    struct
    {
        // Module-definable field, module-specific usage
        signed char reserved : 4;
    } sys;

} SYS_MODULE_INIT;

typedef struct TCPIP_STACK_INIT
{
    /* system module initialization     */
    SYS_MODULE_INIT moduleInit;

} TCPIP_STACK_INIT;

TCPIP_STACK_INIT tcpipInit;

int TCPIP_STACK_Initialize(const int index, const SYS_MODULE_INIT *const init)
{
    if (init == 0)
    { // no initialization data passed
        return 0;
    }
}

int main()
{
    TCPIP_STACK_Initialize(0, &tcpipInit.moduleInit);
}
