################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio:Una persona recibe un prestamo de 10,000 de un banco y desea saber cuanto pagara de interes, si el banco le cobrara una tasa de 27% anual. 

Prestamo=100000
Interes=0.27
echo "Anio en que solicito su prestamo: "
read -r Tiempo
echo "Anio actul: "
read -r Tiempo_Actual

for((i=Tiempo; i<Tiempo_Actual;i++)); do
	# scale=2 sirve para ver que cantidad de puntos decimales queremos tener
    Prestamo=$(bc <<< "scale=2; $Prestamo + ($Prestamo * $Interes)")
    echo "El interés de $i es de: $Prestamo pesos"
done
