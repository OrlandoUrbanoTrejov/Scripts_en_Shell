################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Concatenar 3 numero o letras y mostrar el resultado.

read -p "Numero 1: " Numero1
read -p "Numero 2: " Numero2
read -p "Numero 3: " Numero3
Suma=$(bc <<< "$Numero1 + $Numero2 + $Numero3")
echo "Concatenacion: $Suma"
