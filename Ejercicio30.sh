################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Haciendo uso de 2 arreglos, almacena 5 números en cada arreglo, posteriormente vas a multiplicar los arreglos. 

Primero=()
Segundo=()
Resultado=()
Suma=0

for((i = 0; i<5; i++)); do
    echo "Valor $((i+1)):"
	 read -r Primero[i]
done

echo ""

for((i = 4; i>=0; i--)); do
    Suma=$(($i + 2))
	 echo "Valor $((Suma-1)):"
	 read -r Segundo[i]
done

for((i = 0; i<5; i++)); do
	 Resultado[i]=$(bc <<< "${Primero[i]} * ${Segundo[i]}")
done

echo "Resultado: "

for((i = 0; i < 5; i++)); do
	 echo "${Resultado[i]}"
done


