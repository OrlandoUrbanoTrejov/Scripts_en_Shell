################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escriba el algoritmo dado el numero de horas trabajadas por un empleado y el sueldo por hora, calcule el sueldo total de ese empleado.

echo "Horas trabajadas: "
read -r Horas
echo "Precio por hora: "
read -r Precio
Total=$(bc <<< "$Precio * $Horas")
echo "Sueldo: $Total pesos"
