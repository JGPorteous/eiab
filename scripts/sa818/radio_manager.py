#!/usr/bin/python3
import serial
import argparse

port = '/dev/ttyS1'

parser = argparse.ArgumentParser(description='NiceRF SA818/SA828 Radio Manager.')
parser.add_argument('-c', '--command')
#parser.add_argument('-c', '--current_settings')


args = parser.parse_args()
#print(args)

def sendCommand(command):
        ser = serial.Serial(port, 9600, timeout=1)
        ser.close()
        ser.open()
        ser.write(command)
        read_val = ser.read(size=1024)
        print("Return: ", end='')
        print(read_val)



print(args.command)
if (args.command == 'version'):
        sendCommand(b'AAFAA')
if (args.command == 'current_settings'):
        sendCommand(b'AAFA1')

