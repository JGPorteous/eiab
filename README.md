# Echolink-In-A-Box

## Introduction
The Echolink-In-A-Box project aims at building a low cost, easy to implement solution for Echolink based on SvxLink.
<br/>
<br/>

# Hardware Requirements
The hardware used for this project:
* SAS 868 VHF or UHF Module, PVB Version 1.3 or higher (must have SPKEN Pin)
* NanoPi Neo, Version 1.4
* Raspberry Pi 3B (to be supported later with USB Audio interface)
<br/>
<br/>


# Software
## Installation Scripts for Echolink in a Box

To install, run this on a NanoPi running Ubuntu:
```
curl -L https://git.io/JOGs2 | bash && eiab-setup
```

To install, run this on a Raspberry Pi running Raspbian:
```
curl -L https://git.io/JOGsD | bash && eiab-setup
```

## Packages used
```
software-properties-common htop unzip vorbis-tools apache2
php libapache2-mod-php make cmake groff gzip doxygen tar git 
libsigc++ tcl libgcrypt-dev libasound-dev libspeex-dev librtlsdr-dev libpopt-dev libgsm1-dev g++ cmake make libsigc++-2.0-dev libgsm1-dev libpopt-dev tcl-dev libgcrypt20-dev libspeex-dev libasound2-dev libopus-dev librtlsdr-dev doxygen groff alsa-utils vorbis-tools curl libcurl4-openssl-dev rtl-sdr libcurl4-openssl-dev libjsoncpp-dev
```


