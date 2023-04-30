#!/bin/bash
clear
currentdir=$(pwd)
cd ~

echo EiaB \(Echolink-In-A-Box by ZS6JPG\) :: Installation Script for NanoPi & Ubuntu
echo ------------------------------------------------------------------------------

source /etc/lsb-release
ARCH=$(uname -m)

if [ "$DISTRIB_ID" != "Ubuntu" ]
then
    echo FAILURE: Expected Ubuntu as OS, got $DISTRIB_ID
    exit 1
fi

if [ "$ARCH" != "armv7l" ]
then
    echo FAILURE: Expected armv7l as architecture, got $ARCH
    exit 1
fi
 
function installDependency() {
    PKG_GIT_OK=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
    echo -n Checking for Package: $1: $PKG_GIT_OK
    if [ "" = "$PKG_GIT_OK" ]; then
    echo "No $1. Setting up $1."
    sudo apt-get --yes install $1 
    fi
    echo
}

#Install dependencies
installDependency git
installDependency pdmenu
installDependency lnav
installDependency apt-utils

echo Checking for Package: $REQUIRED_PKG_GIT: $PKG_GIT_OK
if [ "" = "$PKG_GIT_OK" ]; then
  echo "No $REQUIRED_PKG_GIT. Setting up $REQUIRED_PKG_GIT."
  sudo apt-get --yes install $REQUIRED_PKG_GIT 
fi

if [ -d "/opt/eiab" ]; then
    echo
    echo Removing old version of EiaB
    echo ----------------------------
    rm -fr /opt/eiab/
    echo Done
    echo
fi

echo Downloading Echolink-In-A-Box
echo -----------------------------
git clone https://github.com/JGPorteous/eiab.git /opt/eiab/
echo

sudo mkdir -p /opt/eiab/scripts/
cd /opt/eiab/
find ./scripts/ -type f -name "*.sh" -print0 |xargs -0 chmod +x

echo Applying Menu
cp ./files/etc/pdmenurc /etc/pdmenurc

echo Customizing Script
cp -f /opt/eiab/scripts/install.dependencies.nanopi.sh /opt/eiab/scripts/install.dependencies.sh
sudo mkdir -p /usr/share/svxlink/events.d/local
sudo cp /opt/eiab/files/usr/share/svxlink/events.d/local/* /usr/share/svxlink/events.d/local/
cp -fR /opt/eiab/files/usr/share/svxlink/ /usr/share/svxlink/ 
#cp /opt/eiab/files/var/lib/alsa/asound.state /var/lib/alsa/
mv /opt/eiab/files/opt/eiab/* /opt/eiab/


echo Adding echolink user *
useradd -m -d echolink
usermod -aG sudo echolink 
echo "echolink:echolinkinabox" | chpasswd

echo Setting up user "echolink's" shell
chmod +x /etc/pdmenurc
usermod echolink --shell /etc/pdmenurc 

echo Setting up commands
ln -fs /opt/eiab/scripts/setup.sh /usr/bin/eiab-setup
ln -fs /opt/eiab/scripts/update.nanopi.sh /usr/bin/eiab-update
ln -fs /opt/eiab/scripts/help.sh /usr/bin/eiab-help
ln -fs /opt/eiab/scripts/eiab/eiab-version.sh /usr/bin/eiab-version
ln -fs /etc/pdmenurc /usr/bin/eiab-shell

echo
eiab-version

echo Run $(tput setaf 6)eiab-setup$(tput sgr 0) to continue . . .
echo

cd $currentdir
