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
<br/><br/>


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

# Getting Started
## Wiring up the Hardware

add content and pictures

## Getting farimilar with the commands and menus

Getting help:
The help command shows the various command available.

```
$ eiab-help 
EchoLink in a Box by ZS6JGP
---------------------------

Available commands:

eiab-setup
    - Setup, Reinstall and Update your System
eiab-shell
    - Management Shell
eiab-help
    - Help on available commands

More info available at https://github.com/JGPorteous/Echolink-In-A-Box/
```

### Setup Menu
The setup menu allows you to setup the system.
```
$ eiab-setup

    ┌---EchoLink in a Box by ZS6JGP - Setup Menu---┐
    │ APT Sources                                  │
    │ APT Update                                   │
    │ APT Upgrade                                  │
    │                                              │
    │ Install Dependencies                         │
    │ Install SvxLink                              │
    │                                              │
    │ System Info                                  │
    │ CPU Temperature                              │
    │                                              │
    │ Reboot System                                │
    │                                              │
    │ Exit                                         │
    └──────────────────────────────────────────────┘
```

This menu allow you to setup APT sources, do updates and upgrades.

Once your system is updated & upgraded:
* Install Dependecies
* Install SvxLink (This can take up to 20 minutes)

<br/><br/>

### Shell Menu
The Shell command provides access useful tools

```
$ eiab-shell

    ┌---EchoLink in a Box by ZS6JGP---┐
    │ Services Menu                   │
    │ Network Tools                   │
    │ Logs                            │
    │                                 │
    │ Configuration                   │
    │ Operating System                │
    │ Advanced Menu                   │
    │                                 │
    │ System Info                     │
    │ CPU Temperature                 │
    │                                 │
    │ Exit                            │
    └─────────────────────────────────┘
```

## Configuring the software

There are several aspect that need to be configured and each are easily done via the menu options.

Once you have installed the software...

### Compiling SvxLink
add content

