################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realice un algoritmo que, con base en una calificacion proporcionada (0-10), inidique con letra  la calificacion que le corresponde:10 es "A", 9 es "B", 8 es "C", 7 y 6 son "D", y de 5 a 0 son "F". Represente el diagrama de flujo, el pseudocodigo correspondiente #

# Pedimos el dato de entrada y se guarda en la variable
read -p "Ingresa la calificacion obtenida (0-10): " Calificacion

case $Calificacion in
# Evaluamos las opciones juntas que corresponden a esa misma calificacion	
    0|1|2|3|4|5)
        echo "Tu calificacion es: F"
        ;;
    6|7)
        echo "Tu calificacion es: D"
        ;;
    8)
        echo "Tu calificacion es: C"
        ;;
    9)
        echo "Tu calificacion es: B"
        ;;
    10)
        echo "Tu calificacion es: A"
        ;;
# Con esto hacemos que si no se cumplen ninguno de los casos, mandara un mensaje
# de error
    *)
        echo "Calificacion no valida"
       ;;
esac


