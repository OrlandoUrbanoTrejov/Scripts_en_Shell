################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Multiplicar dos numeros.

read -p "Numero 1: " Numero1
read -p "Numero 2: " Numero2
Mul=$(bc <<< "$Numero1 * $Numero2")
echo "Resultado: $Mul"
