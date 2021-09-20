#!/bin/bash
CURRENT_DIR=$(pwd)
if [[ $CURRENT_DIR == *"/usr/share/eiab"* ]]; then
    echo "Cannot update Echolink in a Box when in folder /usr/share/eiab or any subfolder."
    echo ""
    exit 0
fi
curl -L https://git.io/J38AI | bash
