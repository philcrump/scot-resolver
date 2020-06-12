#include "main.h"

#include <string.h>
/*
  CAN_MCR_ABOM - Automatic Bus-Off Management
  CAN_MCR_AWUM - Automatic Wake-Up Management
  CAN_MCR_TXFP - Transmit FIFO Priority Mode (set = chronological, cleared = indentifier)

  CAN_BTR_LBKM - Loopback Mode (RX only sees TX)
  CAN_BTR_SILM - Silent Mode (TX doesn't go on the wire)
  CAN_BTR_SJW - Set Re-synchonisation Jump Width
  CAN_BTR_TS1 / CAN_BTR_TS2 - Set Time Segments
  CAN_BTR_BRP - Set time quantum prescaler
   - PCLK (=SYSCLK=PLL=6*8MHz) = 48MHz, target baudrate = 1Mbps, therefore 48 clocks / bit
      tq = (_BRP+1) = 3 clocks
      Sync _SJW = 1 = 3 clocks
      Segment 1 (sync <-> sample) _TS1 = 11x3 = 33 clocks
      Segment 2 (sample <-> transmission) _TS2 = 2x3 = 6 clocks
      Found empirically to be 1us per bit = 1Mb/s
*/

static bool can_initialised = false;

static const CANConfig can_cfg = {
  .mcr = CAN_MCR_TXFP | CAN_MCR_ABOM,
  .btr = CAN_BTR_SJW(2) | CAN_BTR_TS2(2) | CAN_BTR_TS1(11) | CAN_BTR_BRP(2)
};

static const CANFilter can_filter = {
  .filter = 1, // Number of filter bank to be programmed
  .mode = 0, // 0 = mask, 1 = list
  .scale = 0, // 0 = 16bits, 1 = 32bits
  .assignment = 0, // (must be set to 0)
  .register1 = 0x0010, // identifier 1
  .register2 = 0x07F0 // mask if mask mode, identifier2 if list mode
};

void can_init(void)
{
    if(can_initialised)
    {
        return;
    }

    canSTM32SetFilters(&CAND1, 1, 1, &can_filter);

    canStart(&CAND1, &can_cfg);

    can_initialised = true;
}

void can_send_position_and_fault(const uint16_t position_value, const uint8_t fault_value)
{
    CANTxFrame txmsg;

    txmsg.IDE = CAN_IDE_STD; // Identifier Type: Standard
    txmsg.SID = 0x010; // Standard Identifier Value (11bits)
    txmsg.RTR = CAN_RTR_DATA; // Frame Type
    txmsg.DLC = 3; // Data Length
    txmsg.data16[0] = position_value;
    //txmsg.data8[1]
    txmsg.data8[2] = fault_value;

    canTransmitTimeout(&CAND1, CAN_ANY_MAILBOX, &txmsg, TIME_IMMEDIATE);
}

void can_send_sysinfo(const uint32_t gitversion, const int8_t temperature_degrees)
{
    CANTxFrame txmsg;

    txmsg.IDE = CAN_IDE_STD; // Identifier Type: Standard
    txmsg.SID = 0x013; // Standard Identifier Value (11bits)
    txmsg.RTR = CAN_RTR_DATA; // Frame Type
    txmsg.DLC = 8; // Data Length (max = 8)
    txmsg.data32[0] = gitversion;
    //txmsg.data8[1]
    //txmsg.data8[2]
    //txmsg.data8[3]
    txmsg.data8[4] = temperature_degrees & 0xFF;
    txmsg.data8[5] = 0x00; // SPARE
    txmsg.data8[6] = (CAND1.can->ESR >> 24) & 0xFF; // Receive Error Counter
    txmsg.data8[7] = (CAND1.can->ESR >> 16) & 0xFF; // Transmit Error Counter

    canTransmitTimeout(&CAND1, CAN_ANY_MAILBOX, &txmsg, TIME_IMMEDIATE);
}

static const uint8_t can_command_reset[5] = { 'R', 'E', 'S', 'E', 'T'};
static void can_rx_process(CANRxFrame *message)
{
  if(message->RTR == CAN_RTR_DATA
    && message->IDE == CAN_IDE_STD
    && message->SID == 0x01A)
  {
    if(message->DLC == sizeof(can_command_reset)
      && 0 == memcmp(can_command_reset, message->data8, sizeof(can_command_reset)))
    {
      /* Reset Command! */
      system_reset();
    }
    else
    {
      sdWriteString(&SD1, "Error: Received Unknown Command\r\n");
    }
  }
}

THD_FUNCTION(can_rx_service_thread, arg)
{
    (void)arg;

    msg_t result;
    CANRxFrame rxmsg;

    /* Should have been init-ed by main(), but let's make sure */
    can_init();

    while(1)
    {
        result = canReceiveTimeout(&CAND1, CAN_ANY_MAILBOX, &rxmsg, TIME_MS2I(100));
        if(result == MSG_OK)
        {
            /* Message Received */
            can_rx_process(&rxmsg);
        }

        watchdog_feed(WATCHDOG_DOG_CANRX);
    }
}