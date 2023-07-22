################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular el nuevo salario de un empleado si se le descuenta el 20% de su salario actual 

read -p "Nombre: " Nombre
echo "Salario: "
read -r Salario
Total=$(bc <<< "$Salario -($Salario * 0.20)")
echo "Nuevo Salario: $Total pesos"
