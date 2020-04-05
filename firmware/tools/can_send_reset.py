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

print(f"Sending Message...")
msg = can.Message(arbitration_id=0x01A, is_extended_id=False, data=[ord('R'),ord('E'),ord('S'),ord('E'),ord('T')])
pcan.send(msg)

pcan.cleanup()