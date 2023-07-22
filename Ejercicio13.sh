################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcula el precio de un boleto de viaje, tomando en cuenta el numero de kilometros que se van a recorrer. El precio por kilometro es de $20.50

echo "Kilometros a recorre: "
read -r Distancia
Gasto=20.50
Total=$(bc <<< "$Distancia * $Gasto")
echo "Precio: $Total pesos"
