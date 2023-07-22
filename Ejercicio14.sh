################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular la cantidad de euros a monedas. 

#!/bin/bash

echo "-------- MENU DE CONVERSIONES --------"
echo "1) Euros"
echo "2) Dolares"

read -r Opcion

if ((Opcion == 1)); then
    echo "Dinero:"
    read -r Dinero
    Resultado=$(bc <<< "scale=2; $Dinero / 16.89")
    echo "Dinero: $Resultado dolares"
elif ((Opcion == 2)); then
    echo "Dinero:"
    read -r Dinero
    Resultado=$(bc <<< " $Dinero * 0.053")
    echo "Dinero: $Resultado euros"
else
    echo "Opcion no valida"
fi

exit 0

