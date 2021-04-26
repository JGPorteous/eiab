#!/bin/bash
while true
do
read LINE < /dev/ttyS0
echo $LINE
done
