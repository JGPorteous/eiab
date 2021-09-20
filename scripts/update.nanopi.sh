#!/bin/bash
CURRENT_DIR=$(pwd)
if [[ $CURRENT_DIR == *"/opt/eiab"* ]]; then
    echo "Cannot update Echolink-In-A-Box when in folder /opt/eiab or any subfolder."
    echo ""
    exit 0
fi
curl -L https://git.io/J38AI | bash
