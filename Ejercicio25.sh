################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 17-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Solicita un numero al usuario y calcula su factorial.

echo "Ingresa un numero: "
read -r Numero
Resultado=1
for ((i = 1; i <= Numero; i++)); do
	 Resultado=$(bc <<< "$Resultado * $i")
done
echo "El factorial de $Numero es: $Resultado"
