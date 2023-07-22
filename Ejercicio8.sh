################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio:La CONAGUA requiere determinar el pago que debe de realizar a una persona por el total de metros cúbicos que consume de agua.

echo "Precio por metro: "
read -r Precio
echo "Metros trabajados: "
read -r Metros

Resultado=$(bc <<< "$Precio * $Metros")
echo "Pago: $Resultado pesos"


