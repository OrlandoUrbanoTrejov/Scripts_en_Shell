################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: El banco bandido de peluche desea calcular para cada uno de sus N clientes su saldo actual, su pago minimo y su pago para no generar intereses
 # Ademas quiere calcular el monto de lo que gano por concepto intereses con los clientes morosos. los datos que se conocen de cada clientes son:
 # Saldo anterior, monto de las compras que realizo y pago que deposito en el corte anterior. Para calcular el pago minimo se considera 15% del
 # saldo actual, y el pago para no generar intereses corresponde al 85% del pago actual, considerando que el saldo actual debe incluir 12% de los
 # intereses causados por no realizar el pago minimo y $200 de multa por el mismo motivo. Realice el algoritmo correspondiente

#!/bin/bash

echo "Numero de clientes: "
read -r Clientes

for ((i = 0; i < Clientes; i++)); do
    echo "Nombre cliente: "
    read -r Nombre
    echo "Saldo anterior: "
    read -r Saldo_Anterior
    echo "Ultimo deposito: "
    read -r Deposito
    echo "Monto por ventas: "
    read -r Monto_Compras
    echo "Saldo Actual: "
    read -r Saldo_Actual

    Pago_Actual=$(bc <<< "$Saldo_Actual * 0.12 + 200")
    Saldo_Minimo=$(bc <<< "$Saldo_Actual * 0.15")
    Pago_Interes=$(bc <<< "$Saldo_Actual * 0.85")

    echo "Tu saldo actual $Nombre es de $Pago_Actual pesos"
    echo "Tu pago minimo $Nombre es de $Saldo_Minimo pesos"
    echo "El pago para no generar intereses $Nombre es de $Pago_Interes pesos"
done

