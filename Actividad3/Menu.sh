#!/bin/bash

set -euo pipefail
echo "1. Espacio libre en disco (%)"
echo "2. Espacio libre (tamaño)"
echo "3. Usuario actual y nombre de la máquina"
echo "4. Números de usuarios en la máquina"
echo "5. Espacio usado en tu carpeta"
read -p "Elija una opción: " opcion

case $opcion in
1)df -h;;
2)df -h;;
3)echo "Usuario: " $(whoami);;
4)wc -l /etc/passwd;;
5)du -sh $HOME;;
esac
