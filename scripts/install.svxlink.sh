#!/bin/bash

echo Creating Directories
echo --------------------
mkdir -p ~/Downloads/svxlink

echo Adding users
useradd -rG audio,plugdev,dialout,daemon svxlink

cd ~/Downloads/svxlink

if [ -d "~/Downloads/svxlink/svxlink" ]; then
    echo Backup old svxlink source directory
    echo -----------------------------------
    now=$(date "+%F-%T")
    mv svxlink svxlink-$now
fi

echo Get latest version of SvxLink Source Code
echo -----------------------------------------
git clone http://github.com/sm0svx/svxlink.git
mkdir svxlink/src/build
cd svxlink/src

echo Building SvxLink Source Code
echo ---------------- 
cmake -DUSE_QT=OFF -DCMAKE_INSTALL_PREFIX=/usr -DSYSCONF_INSTALL_DIR=/etc -DLOCAL_STATE_DIR=/var -DWITH_SYSTEMD=ON
#-j4 = 4 threads
make
make doc

echo Installing SvxLink
echo ------------------
sudo make install
sudo ldconfig

echo Setup & Enable Services
echo -----------------------
systemctl enable svxlink_gpio_setup
systemctl enable svxlink

