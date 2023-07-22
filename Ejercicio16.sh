################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 14-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: En un hospital existen 3 áreas: Urgencias, Pediatría y Traumatología. El presupuesto anual del hospital se reparte de la siguiente manera: Pediatría 42% y Traumatología 21%

echo "Presupuesto anual:"
read -r Presupuesto

Urgencias=$(bc <<< "$Presupuesto * 0.37")
Pediatria=$(bc <<< "$Presupuesto * 0.42")
Traumatologia=$(bc <<< "$Presupuesto * 0.21")

echo "Presupuesto Urgencias: $Urgencias pesos"
echo "Presupuesto Pediatria: $Pediatria pesos"
echo "Presupuesto Traumatologia: $Traumatologia pesos"

