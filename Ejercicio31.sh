################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: En la cafetería de Tesji hay una urna con pelotas de colores. verde, roja y amarilla. Cada una aplica un desucento diferente en el total de tu compra. La pelota verde ofrece un 10% de descuento, la amarilla un 5% y la roja un 15%. Con base a esos datos, imprime el monto final a pagar, ya con el descuento.


Pelota=0
Resultado=0

echo "-----CAFETERIA TESJI-----"
echo "1) Pelota Verde"
echo "2) Pelota Roja"
echo "3) Pelota Amarilla"

echo "Elige una opcion: "
read -r Pelota

if [ "$Pelota" -eq 1 ]; then
    echo "Descuento 10%"
    echo "Total de tu compra:  "
    read -r Compra
    Resultado=$(bc <<< "$Compra - ($Compra * 0.10)")
    echo "Monto total: \$$Resultado"

elif [ "$Pelota" -eq 2 ]; then
    echo "Descuento 5%"
    echo "Total de tu compra: "
    read -r Compra
    Resultado=$(bc <<< "$Compra - ($Compra * 0.05)")
    echo "Monto total: \$$Resultado"

elif [ "$Pelota" -eq 3 ]; then
    echo "Descuento 15%"
    echo "Total de tu compra: "
    read -r Compra
    Resultado=$(bc <<< "$Compra - ($Compra * 0.15)")
    echo "Monto total: \$$Resultado"
else
    echo "Opcion no valida"
fi


