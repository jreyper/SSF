#!/usr/bin/bash

set -euo pipefail

try:
        # Solicitar datos al usuario
        base = int(input("Ingrese la base (ancho): "))
        altura = int(input("Ingrese la altura (alto): "))
        # Calcular el área
        area = base * altura
        print(f"\n> El área del rectángulo es: {area}")
        print("> Dibujo del rectángulo:\n")
        # Dibujar el rectángulo usando almohadillas (#)
        for i in range(altura):
            print("# " * base)

except ValueError:
        print("Error: Por favor, ingrese solo números enteros.")

if __name__ == "__main__":
    programa_rectangulo()
