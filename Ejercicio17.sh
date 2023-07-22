################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escriba un algoritmo que dada la cantidad de monedas de 5-10-20 pesos,diga la cantidad de dinero que se tiene en total.

Cajero=(1000 500 200 100 50 20 10 5 2 1)
Cantidad=0

for ((i = 0; i < 10; i++)); do
    echo "Cantidad de ${Cajero[$i]} que tienes: "
    read -r C
    Cantidad=$(bc <<< "$Cantidad + ($C * ${Cajero[$i]})")
    echo "Total: $Cantidad"
done




