################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 17-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Un vendedor de vestidos ofrece 3 diferentes tallas, con diferentes precios, la grande con un precio de $500 por vestido, la mediana con un costo de $400 y la chica de $300. Selecciona la talla a comprar y solicita el número de vestidos que desee, Posteriormente, calculo el monto final.

echo "----VESTIDO----"
echo "1) Grande \$500"
echo "2) Mediana \$400"
echo "3) Chica \$300"

echo "Elige la marca que deseas comprar (1-3): "
read -r Vestido

if [ $Vestido -eq 1 ]; then
    echo "Número de vestidos que deseas comprar: "
    read -r Cantidad
	 Total=$(bc <<< "$Cantidad * 500")

elif [ $Vestido -eq 2 ]; then
    echo "Número de vestidos que deseas comprar: "
    read -r Cantidad
    Total=$(bc <<< "$Cantidad * 400")

elif [ $Vestido -eq 3 ]; then
    echo "Número de vestidos que deseas comprar: "
    read Cantidad
    Total=$(bc <<< "$Cantidad * 500")
else
    echo "Opción inválida"
    exit 1
fi

echo "Monto total de la venta: $Total pesos"
