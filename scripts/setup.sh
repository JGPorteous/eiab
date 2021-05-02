#!/usr/bin/pdmenu --color
#
# Note that the above bang-path isn't required, but it lets you run this
# file directly as a sort of pdmenu script.

#Color Scheme
color:desktop:blue:blue
color:title:blue:white
color:base:blue:white

# Define the main menu.
menu:main:---EchoLink in a Box by ZS6JGP - Setup Menu---
        nop
        exec:APT _Sources::sudo nano /etc/apt/sources.list
        exec:APT U_pdate::sudo apt update
        exec:APT Up_grade::sudo apt upgrade
        nop
        exec:Install _Dependencies:edit,pause:/usr/share/eiab/scripts/install.dependencies.sh
        exec:Install _SvxLink:edit,pause:/usr/share/eiab/scripts/install.svxlink.sh
        exec:Install SvxLink _Google TTS:edit,pause:/usr/share/eiab/scripts/install.svxlink-google-tts.sh
        nop
        exec:System _Info:edit,display:echo "\n" | cat /var/run/motd.dynamic  | sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'
        exec:CPU _Temperature:truncate:echo CPU: $((`cat /sys/class/thermal/thermal_zone0/temp` / 1000)) Degrees
        nop
        exec:Set EchoLink User\'s Password::sudo passwd echolink
        nop
        exec:_Reboot System::sudo reboot
        nop
        exit:_Exit
