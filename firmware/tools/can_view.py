#!/usr/bin/env python3

# To install: `pip3 install python-can`
import can

# Before running this, I need to do: `sudo ip link set can0 up type can bitrate 1000000`

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
    print(pcan.receive())
pcan.cleanup()