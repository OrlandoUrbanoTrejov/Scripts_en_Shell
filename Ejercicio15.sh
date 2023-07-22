################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular el descuento de un medicamento.

read -p "Nombre: " Nombre
echo "Precio del medicamento:"
read -r Precio
Total=$(bc <<< "$Precio - ($Precio * 0.45)")
echo "Cliente: $Nombre el total a pagar es de: $Total pesos"
