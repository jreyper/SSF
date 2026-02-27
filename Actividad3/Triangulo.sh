#!/usr/bin/bash
set -euo pipefail
read -p "Introduce la base del triángulo: " base
read -p "Introduce la altura del triángulo: " altura
area=$(( (base * altura) / 2 ))
echo "El área del triángulo es: $area"

for ((i=1; i<=altura; i++))
do
    for ((j=i; j<altura; j++))
    do
        echo -n " "
    done
    for ((k=1; k<=((2*i-1)); k++))
    do
        echo -n "#"
    done
    echo ""
done
