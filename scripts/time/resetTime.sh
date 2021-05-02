#!/bin/bash
date
echo Resetting time
echo 

sudo service ntp stop
sudo ntpdate -s time.nist.gov
sudo service ntp start

echo Updated
date

