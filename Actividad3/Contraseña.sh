#!/usr/bin/bash
set -euo pipefail
while true; do
    read -sp "Introduce la contraseña: " CONTRA1
echo ""
    read -sp "Confirma la contraseña: " CONTRA2

    if [ $CONTRA1 == $CONTRA2 ]; then
        echo "OK"
        exit 0
else
        echo "ERROR"
    fi
done

