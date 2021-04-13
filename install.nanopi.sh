#!/bin/bash
echo EiaB :: Installation Script for NanoPi

source /etc/lsb-release
ARCH=$(uname -m)

if [$DISTRIB_ID != "Ubuntu"]
    echo FAILURE: Expected Ubuntu, got $DISTRIB_ID 
    exit 1
fi

if [$ARCH != "armv7l"]
    echo FAILURE: Expected armv7l, got $ARCH 
    exit 1
fi

REQUIRED_PKG_GIT="git"
PKG_GIT_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG_GIT|grep "install ok installed")

echo Checking for $REQUIRED_PKG_GIT: $PKG_GIT_OK
if [ "" = "$PKG_GIT_OK" ]; then
  echo "No $REQUIRED_PKG_GIT. Setting up $REQUIRED_PKG_GIT."
  sudo apt-get --yes install $REQUIRED_PKG_GIT 
fi

echo Downloading Echolink in a Box
git clone https://github.com/JGPorteous/Echolink-In-A-Box.git /usr/share/eiab/

cd /usr/share/eiab/
chmod +x ./setup.sh
./setup.sh

