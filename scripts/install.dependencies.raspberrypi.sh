#!/bin/bash

echo Dependencies Installation for Rasperry Pi running Raspbian
echo ----------------------------------------------------------
echo

sudo apt -y install software-properties-common htop unzip vorbis-tools apache2 jq nano g++ libsigc++-2.0-dev libgsm1-dev libpopt-dev tcl-dev libgcrypt11-dev libspeex-dev libasound2-dev  alsa-utils git cmake libgpiod-dev gpiod
sudo apt -y install php libapache2-mod-php ntpdate
sudo apt -y install make cmake groff gzip doxygen tar git 
sudo apt -y install libsigc++ tcl libgcrypt-dev libasound-dev libspeex-dev librtlsdr-dev libpopt-dev libgsm1-dev  
sudo apt -y install g++ cmake make libsigc++-2.0-dev libgsm1-dev libpopt-dev tcl-dev libgcrypt20-dev libspeex-dev libasound2-dev libopus-dev librtlsdr-dev doxygen groff alsa-utils vorbis-tools curl libcurl4-openssl-dev rtl-sdr libcurl4-openssl-dev libjsoncpp-dev
apt -y install python3 python3-pip
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py
pip install --upgrade setuptools
sudo apt install python3-pip
