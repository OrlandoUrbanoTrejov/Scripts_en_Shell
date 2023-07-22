################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 17-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un codigo que imprima un arbol de navidad, de la siguiente manera. Recuerdahacer uso de ciclos.


echo  "Altura del árbol: " 
read -r Altura

for ((i = 1; i <= Altura; i++)) do
    Espacios=$((Altura - i))

    for ((j = 1; j <= Espacios; j++)) do
        echo -n " "
    done
    
    for ((j = 1; j <= 2 * i - 1; j++))  do
        echo -n "*"
    done
    
	 echo

done

Tronco=$((Altura - 1))

for ((i = 1; i <= 2; i++)) do
    for ((j = 1; j <= Tronco; j++)) do
        echo -n " "
    done
	 echo "**"
done

