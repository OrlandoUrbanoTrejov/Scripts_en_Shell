################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Obtener la edad de una persona en meses, si se ingresa su edaden años y meses. Ejemplo: Ingresado 3 años 4 meses debe mostrar 40 meses.

#!/bin/bash

echo "Edad en años:"
read -r Edad
echo "Cuantos meses:"
read -r Meses

Resultado=$((Edad * 12 + Meses))
echo "Edad: $Resultado meses"


