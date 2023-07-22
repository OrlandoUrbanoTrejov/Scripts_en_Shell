################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Un vendedor recibe un sueldo base más un 10% por comision de sus ventas el vendedor desea saber cuanto dinero obtendra por concepto de comisiones por las 3 ventas que realiza en el mes y el total que recibira en el mes tomando en cunta su base y comisiones.

Comision=0
Total=0

echo "Sueldo fijo:"
read -r Sueldo
echo "Ventas realizadas:"
read -r Ventas

for ((i=0; i<Ventas; i++)); do
    echo "Precio de la venta $((i+1)): "
    read -r Precio_Venta
    Comision=$(bc <<< "$Comision + ($Precio_Venta * 0.10)")
done

Total=$(bc <<< "scale=2; $Comision + $Sueldo")
echo "Comision: $Comision pesos"
echo "Sueldo: $Total pesos"



