################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realice un algoritmo que determine el sueldo semanal de N trabajadores considerando que se les descuenta 5% de su sueldo si ganan entre 0 y 150 pesos. Se les descuenta 7% si ganan mas de 150 pero menos de 300, y 9% si ganan mas de 300 pero menos de 450. Los datos son horas trabajadas, sueldo por hora, y nombre de cada trabajador.

echo "Numero de trabajadores: "
read -r Trabajadores

for ((i = 0; i < Trabajadores; i++)); do
    echo "Nombre del trabajador $((i + 1)):"
    read -r Nombres
    echo "Horas Trabajadas: "
    read -r Horas_Trabajadas
    echo "Sueldo por hora: "
    read -r Sueldo_Hora

    Salario=$(bc <<< "$Horas_Trabajadas * $Sueldo_Hora")

    if ((Salario >= 0 && Salario <= 150)); then
        Nuevo_Salario=$(bc <<< "$Salario * 0.5")
    elif ((Salario > 150 && Salario <= 300)); then
        Nuevo_Salario=$(bc <<< "$Salario * 0.7")
    elif ((Salario > 300 && Salario <= 450)); then
        Nuevo_Salario=$(bc <<< "$Salario * 0.9")
    else
        Nuevo_Salario=0
    fi

    Total=$(bc <<< "$Salario - $Nuevo_Salario")
    echo "Trabajador: $Nombres"
    echo "Salario final: $Total"
done

