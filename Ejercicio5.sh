################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Un vendedor a realizado N ventas y desea saber cuantas fueron por 10,000 o menos, cuantas fueron por mas de 10,000 pero por menos de 20,000 y cuanto fue el monto de las ventas de cada una, y el monto global, realice el algoritmo para determinar los totales

## Declaramos variables
Ventas=0
TotalFinal=0
Total=0
Cantidad=()

# Recabamos la cantidad de ventas que se han hecho
read -p "Numero de ventas: " Ventas

# Ciclo for
for((i = 0; i < Ventas; i++)); do
    read -p "Precio de la venta $((i + 1)): " Venta
    Cantidad+=("$Venta")

    TotalFinal=$(bc <<< "$TotalFinal + ${Cantidad[i]}")

    if ((Cantidad[i] < 1000)); then
        Total=$(bc <<< "$Total + ${Cantidad[i]}")
    elif ((Cantidad[i] > 1000 && Cantidad[i] < 2000)); then
        Total=$(bc <<< "$Total + ${Cantidad[i]}")
    fi
done

echo "Total final: $TotalFinal"

