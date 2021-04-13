#!/bin/bash
echo EiaB :: Installation Script for NanoPi

source /etc/lsb-release
ARCH=$(uname -m)

if [$DISTRIB_ID != "Ubuntu"]
    echo FAILURE: Expected Ubuntu, got $DISTRIB_ID 
    break;
fi

if [$ARCH != "armv7l"]
    echo FAILURE: Expected armv7l, got $ARCH 
    break;
fi

# Got the right version, let's get the install files...
#git clone 
