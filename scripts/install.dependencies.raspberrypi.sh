#!/bin/bash

echo Dependencies Installation for Rasperry Pi running Raspbian
echo ----------------------------------------------------------
echo

sudo apt -y install software-properties-common htop unzip vorbis-tools apache2 jq
sudo apt -y install php libapache2-mod-php ntpdate
sudo apt -y install make cmake groff gzip doxygen tar git 
sudo apt -y install libsigc++ tcl libgcrypt-dev libasound-dev libspeex-dev librtlsdr-dev libpopt-dev libgsm1-dev  
sudo apt -y install g++ cmake make libsigc++-2.0-dev libgsm1-dev libpopt-dev tcl-dev libgcrypt20-dev libspeex-dev libasound2-dev libopus-dev librtlsdr-dev doxygen groff alsa-utils vorbis-tools curl libcurl4-openssl-dev rtl-sdr libcurl4-openssl-dev libjsoncpp-dev
apt -y install python3 python3-pip
