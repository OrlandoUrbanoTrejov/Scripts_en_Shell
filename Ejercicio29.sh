################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Haciendo uso de arreglos, almacena la calificación de una materia (Recuerda que son 5 unidades).Posteriormente, calcula el promedio final e imprime los resultados.

Materia=""
Suma=0
Promedio=0
# Asi se declara un arreglo en sh
Calificacion=()

echo "Materia: "
read -r Materia

for ((i=1; i<=5; i++)); do
    read -p "Calificacion en la Unidad $i: " Calificacion[i]
    Suma=$((Suma + Calificacion[i]))
done

Promedio=$(bc <<< "$Suma / 5")

# Imprimir los resultados
echo "Asignatura: $Materia"
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"

for ((i=1; i<=5; i++)); do
    echo -e "${Calificacion[i]}\t\t\c"
done

echo "$Promedio"




