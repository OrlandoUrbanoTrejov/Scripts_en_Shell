################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Los alumnos de primer semestre de la carrera de Ingeniería en Sistemas Computacionales tienen que organizarse para el desfile del 20 de noviembre. Cada alumnodeberá ir vestido de acuerdo al taller en el que está inscrito: Presentaran un espectáculo en la Plaza Manuel Ávila Camacho de Jilotepec (El valor por esta actividades de 1 crédito). Los Alumnos que hayan participado en la carrera tendrán 1 crédito, si logro quedar en uno de los 3 primeros lugares, tendrá 1 crédito más. Imprime el total de créditos. 

echo "Estás inscrito a un taller (1 = Si y 2 = No): "
read -r Credito

if [ "$Credito" -eq 1 ]; then
    echo "Tienes un crédito"
    echo ""
    echo "Participaste en la carrera (1 = si y 2 = NO)"
    read -r  Carrera

    if [ "$Carrera" -eq 1 ]; then
        echo "Tienes otro crédito"
        echo "Quedaste en uno de los 3 primeros lugares"
        read -r Lugar

        if [ "$Lugar" -eq 1 ]; then
            echo "Genial, tienes tres créditos"
        elif [ "$Lugar" -eq 2 ]; then
            echo "Tienes dos créditos"
        fi
    elif [ "$Carrera" -eq 2 ]; then
        echo "Tienes solo un crédito"
    fi

elif [ "$Credito" -eq 2 ]; then
    echo "Inscríbete a un taller por favor"
    echo "Participaste en la carrera (1 = si y 2 = NO)"
    read -r Carrera

    if [ "$Carrera" -eq 1 ]; then
        echo "Tienes un crédito"
        echo "Quedaste en uno de los 3 primeros lugares"
        read -r Lugar

        if [ "$Lugar" -eq 1 ]; then
            echo "Tienes dos créditos"
        elif [ "$Lugar" -eq 2 ]; then
            echo "Tienes un crédito"
        fi
    elif [ "$Carrera" -eq 2 ]; then
        echo "No tienes créditos"
    fi

else
    echo "Opción Inválida"
fi

