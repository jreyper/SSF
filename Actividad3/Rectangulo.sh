#!/usr/bin/bash

set -euo pipefail
read -p "Introduce la base del rectángulo: " base
read -p "Introduce la altura del rectángulo: " altura

area=$((base * altura))
echo "El área del rectángulo es: $area"
for ((i=1; i<=altura; i++))
do
    for ((j=1; j<=base; j++))
    do
        echo -n "#"
    done
    echo ""
done
