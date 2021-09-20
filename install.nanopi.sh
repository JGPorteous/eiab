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
    echo Checking for Package: $1: $PKG_GIT_OK
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

echo Checking for Package: $REQUIRED_PKG_GIT: $PKG_GIT_OK
if [ "" = "$PKG_GIT_OK" ]; then
  echo "No $REQUIRED_PKG_GIT. Setting up $REQUIRED_PKG_GIT."
  sudo apt-get --yes install $REQUIRED_PKG_GIT 
fi

if [ -d "/usr/share/eiab" ]; then
    echo
    echo Removing old version of EiaB
    echo ----------------------------
    rm -fr /usr/share/eiab/
    echo Done
    echo
fi

echo Downloading Echolink-In-A-Box
echo -----------------------------
git clone https://github.com/JGPorteous/eiab.git /usr/share/eiab/
echo

sudo mkdir -p /usr/share/eiab/scripts/
cd /usr/share/eiab/
find ./scripts/ -type f -name "*.sh" -print0 |xargs -0 chmod +x

echo Applying Menu
cp ./files/etc/pdmenurc /etc/pdmenurc

echo Customizing Script
cp -f /usr/share/eiab/scripts/install.dependencies.nanopi.sh /usr/share/eiab/scripts/install.dependencies.sh
sudo mkdir -p /usr/share/svxlink/events.d/local
sudo cp /usr/share/eiab/files/usr/share/svxlink/events.d/local/* /usr/share/svxlink/events.d/local/
cp -fR /usr/share/eiab/files/usr/share/svxlink/ /usr/share/svxlink/ 
#cp /usr/share/eiab/files/var/lib/alsa/asound.state /var/lib/alsa/
mv /usr/share/eiab/files/usr/share/eiab/* /usr/share/eiab/


echo Adding echolink user
useradd -m -d echolink
usermod -aG sudo echolink 
echo "echolink:echolinkinabox" | chpasswd

echo Setting up user "echolink's" shell
chmod +x /etc/pdmenurc
usermod echolink --shell /etc/pdmenurc 

echo Setting up commands
ln -f /usr/share/eiab/scripts/setup.sh /usr/bin/eiab-setup
ln -f /usr/share/eiab/scripts/update.nanopi.sh /usr/bin/eiab-update
ln -f /usr/share/eiab/scripts/help.sh /usr/bin/eiab-help
ln -f /usr/share/eiab/scripts/eiab/eiab-version.sh /usr/bin/eiab-version
ln -f /etc/pdmenurc /usr/bin/eiab-shell

echo
eiab-version

echo
echo Run $(tput setaf 6)eiab-setup$(tput sgr 0) to continue . . .
echo

cd $currentdir
