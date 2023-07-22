################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Se requiere determinar el tiempo en que tarda una persona en llegar de una ciudad a otra en bicicleta, considerando que lleva una velocidad constante 

echo "Velocidad en (Km/h): "
read -r Velocidad

echo "Distancia recorrida: "
read -r Distancia

Total=$(bc <<< "($Velocidad * $Distancia) / 60")
echo "Tiempo: $Total horas"
