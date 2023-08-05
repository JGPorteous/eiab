#!/bin/bash

echo Dependencies Installation for NanoPi running Ubuntu
echo ---------------------------------------------------
echo 

apt -y install software-properties-common htop unzip vorbis-tools apache2 jq nano libgpiod-dev gpiod
apt -y install php libapache2-mod-php ntpdate 
apt -y install make cmake groff gzip doxygen tar git 
apt -y install libsigc++ tcl libgcrypt-dev libasound-dev libspeex-dev librtlsdr-dev libpopt-dev libgsm1-dev  
apt -y install g++ cmake make libsigc++-2.0-dev libgsm1-dev libpopt-dev tcl-dev libgcrypt20-dev libspeex-dev libasound2-dev libopus-dev librtlsdr-dev doxygen groff alsa-utils vorbis-tools curl libcurl4-openssl-dev rtl-sdr libcurl4-openssl-dev libjsoncpp-dev
apt -y install python python-pip 
#pip install --upgrade pip
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py
pip install --upgrade setuptools
sudo apt install python3-pip
