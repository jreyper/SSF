#!/usr/bin/bash
ALTURA=$1
PESO=$2
IMC=$(( ($PESO * 10000) / ($ALTURA * $ALTURA) ))

echo "Tu IMC es: $IMC"

if [ $IMC -lt 18 ]; then
    echo "Estado: Bajo peso"
elif [ $IMC -lt 25 ]; then
    echo "Estado: Saludable"
elif [ $IMC -lt 30 ]; then
    echo "Estado: Sobrepeso"
else
    echo "Estado: Obesidad"
fi
