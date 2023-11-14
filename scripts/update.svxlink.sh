#!/bin/bash

cd ~/Downloads/svxlink/svxlink

if [[ `git diff-index --quiet HEAD --` ]]; then
    echo 'Changes Detected - Downloading and Building'
    echo -----------------------------------
    git pull
    cd src
    cmake -DUSE_QT=OFF -DCMAKE_INSTALL_PREFIX=/usr -DSYSCONF_INSTALL_DIR=/etc -DLOCAL_STATE_DIR=/var -DWITH_SYSTEMD=ON
    make
    make doc
    sudo make install
    sudo ldconfig
    sudo systemctl daemon-reload
    sudo systemctl restart svxlink
else
    echo 'No Changes detected, quitting.'
fi
