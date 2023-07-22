################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio:Haciendo uso de arreglos bidimensionales, solicita la calificación de las siguientes materias:
# → Cálculo Diferencial.
# → Fundamentos de programación.
# → Química.
# → Fundamentos de investigación.
# → Matemáticas Discretas.
# → Desarrollo Sustentable.
# Recuerda que cada materia tiene 5 unidades, una vez obtenida cada calificación por unidad, calcula el promedio de cada materia. Finalmente, calcula el promedio general.

# Asi declaramos los arreglos bidimensionales en shell
Materias=(
  "Cálculo Diferencial"
  "Fundamentos de Programación"
  "Química"
  "Fundamentos de investigación"
  "Matemáticas Discretas"
  "Desarrollo Sustentable"
)
Calificaciones=()
Promedios_Materias=()
Promedio_General=0

# Bucle para capturar las calificaciones
for ((i=0; i<6; i++)); do
  echo "Calificación ${Materias[$i]}:"
  califs=()
  for ((j=0; j<5; j++)); do
    echo "Unidad $((j+1)): "
    read -r calificacion
    califs+=("$calificacion")
    Promedios_Materias[$i]=$((Promedios_Materias[i] + calificacion))
  done

  Calificaciones+=("${califs[@]}"
  Promedios_Materias[$i]=$((Promedios_Materias[i] / 5))
  Promedio_General=$((Promedio_General + Promedios_Materias[i]))
  echo ""
done

Promedio_General=$((Promedio_General / 6))

# Impresión de resultados
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"
for ((i=0; i<6; i++)); do
  for ((j=0; j<5; j++)); do
	# Con el (-ne) evito el salto de linea despues que se imprima la calificacion si no que se imprima en la linea de codigo, pero con tabulaciones
    echo -ne "${Calificaciones[i*5+j]}\t\t"
  done
  echo "${Promedios_Materias[i]}"
done

# (-e) nos sirve para que podamos poner caracteres especiales como \n o \t
echo -e "\nPromedio general: $Promedio_General"

~
~
