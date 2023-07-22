################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio:Se requiere determinar el costo que tendra que realizar una llamada telefonica con base en el tiempo que dura la llamada y el costo por minuto

echo "Tiempo de la llamada en minutos: " 
read -r Tiempo
echo "Costo por minuto en pesos: "
read -r Costo
Total=$(bc <<< "$Tiempo * $Costo")
echo "Costo de la llamada: $Total pesos"

