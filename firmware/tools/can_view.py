#!/usr/bin/env python3

import sys, signal

# To install: `pip3 install python-can`
import can

# Before running this, I need to do: `sudo ip link set can0 up type can bitrate 1000000`

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    OFF = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def signal_handler(signal, frame):
    print("\nExiting..")
    pcan.cleanup()
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

def _get_message(msg):
    return msg

class PCANBus(object):

    def __init__(self):
        print("Initializing CANbus")
        self.bus = can.interface.Bus(bustype='socketcan', channel='can0', bitrate=1000000)
        self.buffer = can.BufferedReader()
        self.notifier = can.Notifier(self.bus, [self._get_message, self.buffer])

    def _get_message(self, msg):
        return msg

    def send(self, message):
        try:
            self.bus.send(message)
            return True
        except can.CanError:
            print("message not sent!")
            return False

    def receive(self):
        return self.buffer.get_message()

    def flush_buffer(self):
        msg = self.buffer.get_message()
        while (msg is not None):
            msg = self.buffer.get_message()

    def cleanup(self):

        self.notifier.stop()
        self.bus.shutdown()

pcan = PCANBus()
#msg = Message(arbitration_id=pcan.RX_PDO + 50, is_extended_id=False, data=[0x4F, 0x00])
#pcan.send_message(msg)
while(1):
    # https://python-can.readthedocs.io/en/master/message.html#can.Message.data
    message = pcan.receive()
    if message.arbitration_id == 0x10 and message.dlc == 2:
        # Position Message
        position_int = (message.data[0] << 8) | message.data[1];
        position_degrees = position_int * (360.0 / 65536.0);
        print(f"Position: {bcolors.BOLD}%6.2f°{bcolors.OFF} (0x%04X)" \
         % (position_degrees, position_int))
    elif message.arbitration_id == 0x11 and message.dlc == 3:
        # Position with Fault Message
        position_int = (message.data[0] << 8) | message.data[1];
        position_degrees = position_int * (360.0 / 65536.0);
        print(f"Position: {bcolors.BOLD}%6.2f°{bcolors.OFF} (0x%04X) {bcolors.WARNING}FAULT: 0x%02X{bcolors.OFF}" \
         % (position_degrees, position_int, message.data[2]))
    elif message.arbitration_id == 0x13 and message.dlc == 8:
        # Sysinfo Message
        firmware_version = (message.data[0] << 20) | (message.data[1] << 12) | (message.data[2] << 4) | (message.data[3] & 0xF0) >> 4;
        firmware_dirty = True if (message.data[3] & 0x0F) == 0x0F else False;
        temperature = message.data[4];
        if temperature > 60:
            temperature_colour = bcolors.WARNING
        else:
            temperature_colour = bcolors.OKGREEN
        can_esr_rx = message.data[6];
        if can_esr_rx > 0:
            can_esr_rx_colour = bcolors.WARNING
        else:
            can_esr_rx_colour = bcolors.OKGREEN
        can_esr_tx = message.data[7];
        if can_esr_tx > 0:
            can_esr_tx_colour = bcolors.WARNING
        else:
            can_esr_tx_colour = bcolors.OKGREEN

        print("FW: %07x%s, %sTemperature: %+3d°C%s, %sCAN RX Errors: %3d%s, %sCAN TX Errors: %3d%s" \
         % (firmware_version, "-dirty" if firmware_dirty else "-clean", \
            temperature_colour, temperature, bcolors.OFF, \
            can_esr_rx_colour, can_esr_rx, bcolors.OFF, \
            can_esr_tx_colour, can_esr_tx, bcolors.OFF))