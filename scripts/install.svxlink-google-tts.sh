#!/bin/bash
if [ -d "/usr/share/svxlink-google-tts" ]; then
    echo
    echo Removing old version of Svxlink Google TTS
    echo ----------------------------
    rm -fr /usr/share/svxlink-google-tts
    echo Done
    echo
fi

git clone https://github.com/n7ipb/svxlink-google-tts.git /usr/share/svxlink-google-tts
pip3 install virtualenv
mkdir -p ~/.google/
touch ~/.google/key.json