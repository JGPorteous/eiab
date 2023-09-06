#!/usr/bin/python3
package = 'serial'
try:
        import serial
except ImportError:
        print("Need serial support, install with 'pip3 install pyserial'")
        exit()

import argparse

port = '/dev/ttyS1'
commands = {}
commands['getVersion'] = b'AAFAA'
commands['getSettings'] = b'AAFA1'
commands['setSettings'] = b'AAF'


settings = {}
settings['stn'] = b'AA145.1000,145.7000,145.5250,145.5250,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,008,000,3'
settings['wr'] = b'AA145.0250,145.6250,145.5250,145.5250,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,008,000,3'

parser = argparse.ArgumentParser(description='NiceRF SA818/SA828 Radio Manager.')
parser.add_argument('-c', '--command',help='Available Commands: getVersion, getSettings, setSettings', required=True)

args = parser.parse_args()
print(args)
print(args.command)

def sendCommand(command):
        ser = serial.Serial(port, 9600, timeout=1)
        ser.close()
        ser.open()
        ser.write(command)
        read_val = ser.read(size=1024)
        print("Return: ", end='')
        print(read_val)

if (args.command == 'getVersion'):
        print('Getting Version...')
        sendCommand(commands['getVersion'])

if (args.command == 'getSettings'):
        print('Getting Settings...')
        sendCommand(commands[args.command])
