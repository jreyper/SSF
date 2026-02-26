#!/usr/bin/bash
set -euo pipefail

DIAS=$1
HORAS=$2
SEGUNDOS=$3

TOTAL=$(( $1 * 86400 + $2 * 3600 + $3 ))

echo "Este es el total de segundos:" $TOTAL
