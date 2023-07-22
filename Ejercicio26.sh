################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 17-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Solicita al usuario el numero de alumnos en un salon, posteriormente pida la edad de cada uno de ellos y calcula su promedio de edad.

echo "Cuantos alumnos hay en el salon: "
read -r Alumnos
Suma=0
Promedio=0
for((i = 1; i <= $Alumnos; i++)) do
    echo "Edad del alumno $i:"
	 read -r Edad
		  Suma=$(bc <<< "$Suma + $Edad")
done
Promedio=$(bc <<< "$Suma / $Alumnos")
echo "El promedio de las edades de los alumnos es: " $Promedio
