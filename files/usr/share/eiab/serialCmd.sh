#!/bin/bash
# Keep the ttyUSB0 device open on fd 3
#exec 3<>/dev/ttyS0
#stty -F /dev/ttyS0 9600 cs8 raw
#stty -F /dev/ttyS0 ispeed 9600 ospeed 9600  cs8 raw crt
#stty -F /dev/ttyS0 9600 cs8 -cstopb -parenb -opost ixon crtscts
#stty -F /dev/ttyS0 9600 cs8 raw
serialport=ttyS1

#echo Setup Serial
#stty -F /dev/$serialport 9600 raw


#rm -f ttyS0.log
#touch ttyS0.log
#stdbuf -o0 
#stdbuf -oL 
echo Start Logging
cat /dev/$serialport > $serialport.log&

sleep 0.5s
echo Write Data
#echo -n "$1" >&3                 # send data
echo -n "$1" > /dev/$serialport

sleep 1s                        # wait a bit
echo Kill cat
killall -q cat > /dev/null       # force cat to stop
#sleep 1s                       # let file close
echo get the result
#head -1 ttyS0.log
result=$(head -1 $serialport.log)
echo "The result is: $result"

