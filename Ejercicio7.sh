################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio:Realice un algoritmo para leer calificaciones de N alumnos y determine el numero de alumnos aprobados y reprobados.

#!/bin/bash

echo "Cantidad de alumnos: "
read -r Alumnos

for ((i = 0; i < Alumnos; i++)); do
    echo "Calificacion del alumno $((i + 1)) (1-100):"
    read -r Calificacion

    if ((Calificacion > 70)); then
        echo "APROBADO"
    else
        echo "REPROBADO"
    fi
done

