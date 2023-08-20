#!/usr/bin/python3
import serial
import argparse

port = '/dev/ttyS1'
commands = {}
commands['getVersion'] = b'AAFAA'
commands['getSettings'] = b'AAFA1'
commands['setSettings'] = b'AAF'

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
