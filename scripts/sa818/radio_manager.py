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
commands['setSettings'] = b'AAFA3'


settings = {}
settings['stn'] = b'AA145.1000,145.7000,145.5250,145.5250,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,008,000,3'
settings['wr'] = b'AA145.0250,145.6250,145.5250,145.5250,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,145.1000,145.7000,008,000,3'
settings['wr2'] = b'AA145.0250,145.6250,145.0000,155.0000,145.0001,155.0001,145.0002,155.0002,145.0005,155.0005,145.0005,155.0005,145.0005,155.0005,145.0006,155.0006,145.0007,155.0007,145.0010,155.0010,145.0010,155.0010,145.0010,155.0010,145.0011,155.0011,145.0012,155.0012,145.0015,155.0015,145.0015,155.0015,000,008'

parser = argparse.ArgumentParser(description='NiceRF SA818/SA828 Radio Manager.')
parser.add_argument('-c', '--command',help='Available Commands: getVersion, getSettings, setSettings', required=True)
parser.add_argument('-s', '--savedsettings', help='Saved Settings [stn|wr]', required=False)

args = parser.parse_args()
print(args)
print(args.command)
print(args.savedsettings)


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

if (args.command == 'setSettings'):
        print('Setting Settings...')
        writeCommand = commands[args.command] + settings[args.savedsettings][2:]
        print('Writing: ', end='')
        print(writeCommand)
        sendCommand(writeCommand)
