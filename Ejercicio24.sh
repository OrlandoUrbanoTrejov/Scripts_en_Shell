################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 17-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un codigo que calcule la mitad de la tercera parte del doble de un numero.

echo "Ingresa un numero: "
read -r Numero

Resul1=$(bc <<< "$Numero * 2")
Resul2=$(bc <<< "$Resul1 / 3")
Final=$(bc <<< "$Resul2 / 2")
echo "La mitad de la tercera parte del doble de $Numero es: $Final"

