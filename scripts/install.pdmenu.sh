#!/bin/bash

echo Installing PDMenu
apt -y install pdmenu lnav

echo Applying Menu
cp ./files/etc/pdmenurc /etc/pdmenurc

echo Adding echolink user
useradd -m -d echolink
usermod -aG sudo echolink 

echo Setting up echolink\'s shell
chmod +x /etc/pdmenurc
usermod echolink --shell /etc/pdmenurc 

