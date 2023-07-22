################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################
   
# Ejercicio: Se desea saber el total de una caja registradora de un almacén, se conoce el numero de billetes y monedas asi como su valor.

Dinero=(1000 500 200 100 50 20 5 2 1)
Resultado=0

# Utilizamos un ciclo for para ir recorriendo las posiciones del arreglo

for((i=0; i<9; i++)); do   # Indicamos que este codigo se estara ejecutando en el bucle
    echo "Cantidad de dinero que tiene: ${Dinero[$i]} pesos"
    read -r Convertidor
    Resultado=$((Resultado + Convertidor * Dinero[$i]))
    echo "Total almacenado: $Resultado pesos"
done
