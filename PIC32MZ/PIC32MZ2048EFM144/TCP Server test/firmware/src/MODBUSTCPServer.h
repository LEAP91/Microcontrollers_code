
#if defined(__GNUC__)
#define __EXTENSION __extension__
#else
#define __EXTENSION
#endif

#if !defined(__PACKED)
    #define __PACKED
#endif

// Defines which port the server will listen on
#define MODBUS_PORT         502

//Define for buffer size
#define HOLDING_REG_SIZE        25
#define INPUT_REG_SIZE          25
#define MODBUS_RX_BUFFER_SIZE      50
#define MODBUS_TX_BUFFER_SIZE   50
#define COIL_SIZE                3


//Modbus Functions
#define	ReadCoil		  1
#define	ReadDiscreteInputs	  2
#define	ReadHoldingRegister	  3
#define	ReadInputRegister	  4
#define	WriteSingleCoil		  5
#define	WriteSingleRegister	  6
#define	WriteMultipleCoils	 15
#define	WriteMultipleRegister    16

//Modbus Errors
#define Illegal_Function_Code   0x01u
#define Illegal_Data_Address    0x02u

//Position of the data in the frame
#define MODBUS_UnitID           6
#define MODBUS_FunctionCode     7
#define MODBUS_BYTE_COUNT       8
#define MODBUS_DataStart       13
#define MODBUS_ExceptionCode    8

//number of words available for READ HOLDING REGISTER
#define MAX_REG_SIZE 50u //is it same as HOLDING REG SIZE

typedef union
{
    uint8_t Val;
    uint8_t v[2];
    struct __PACKED
    {
        uint8_t LB;
        uint8_t HB;
    } byte;
    struct __PACKED
    {
        __EXTENSION uint8_t b0:1;
        __EXTENSION uint8_t b1:1;
        __EXTENSION uint8_t b2:1;
        __EXTENSION uint8_t b3:1;
        __EXTENSION uint8_t b4:1;
        __EXTENSION uint8_t b5:1;
        __EXTENSION uint8_t b6:1;
        __EXTENSION uint8_t b7:1;
        __EXTENSION uint8_t b8:1;
        __EXTENSION uint8_t b9:1;
        __EXTENSION uint8_t b10:1;
        __EXTENSION uint8_t b11:1;
        __EXTENSION uint8_t b12:1;
        __EXTENSION uint8_t b13:1;
        __EXTENSION uint8_t b14:1;
        __EXTENSION uint8_t b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

//Modbus command structure
typedef struct
{
    WORD_VAL TransactionID;       //Transaction ID
    WORD_VAL ProtocolID;          //Protocol ID
    uint16_t Length;                  //Length
    uint8_t UnitID;                  //Unit ID
    uint8_t FunctionCode;            //Function code
    WORD_VAL StartAddress;        //Starting register address
    WORD_VAL NumberOfRegister;    //Number of registers
} _MODBUS_COMMAND;                //MODBUS_COMMAND

_MODBUS_COMMAND MODBUS_COMMAND;

typedef struct
{
    uint8_t Val;
    uint8_t Addr;

} WORD_VAL1, WORD_BITS1;

//Function Prototypes
void MODBUSTCPServer(void);
void ProcessReceivedMessage(void);
void readHoldingRegister(void);
void writeHoldingRegister(void);
void readInputRegister(void);
void writeMultipleCoils(void);
void writeSingleCoil(void);
void ModbusError(unsigned char ErrNum);

