################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################
   
# Ejercicio: Realice un algoritmo que calcule el precio total del boleto de una persona, ingresando el precio por kilometro y la cantidad de kilometros a recorrer. Represente el diagrama de flujo, el pseudocodigo correspondiente

echo "Precio por kilómetro: " 
read -r Precio_Kilometro

echo "Cantidad de kilómetros a recorrer: "
# Leemos los datos
read -r Distancia

# Ocupamos el comando bc para hacer las multiplicacion de las operaciones
Precio_Boleto=$(bc <<< "$Precio_Kilometro * $Distancia")

echo "Precio del boleto: $Precio_Boleto pesos "

