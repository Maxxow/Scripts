# Solicitar datos del trabajador
echo "Ingrese el nombre del trabajador:"
read nombre
echo "Ingrese la direccion del trabajador:"
read direccion
echo "Ingrese el puesto del trabajador:"
read puesto
echo "Ingrese el sueldo semanal del trabajador (por 7 días de trabajo):"
read sueldo_semanal
echo "Ingrese los días trabajados del trabajador (de 7 días):"
read dias_trabajados
echo "Ingrese las horas extras trabajadas del trabajador:"
read horas_extras

# Calcular el sueldo proporcional por los días trabajados
sueldo_proporcional=$((sueldo_semanal * dias_trabajados / 7))

# Calcular el pago por hora
pago_por_hora=$((sueldo_proporcional / dias_trabajados / 8))

horas_extras_doble=0
horas_extras_triple=0

# Calcular las horas extras trabajadas
if [ $horas_extras -le 8 ]; then
    horas_extras_doble=$horas_extras
else
    horas_extras_doble=8
    horas_extras_triple=$((horas_extras - 8))
fi

total_pagar_horas_extras=$(echo "$horas_extras_doble * $pago_por_hora * 2 + $horas_extras_triple * $pago_por_hora * 3" | bc)

# Calcular el total a pagar (sueldo proporcional + horas extras)
total_pagar=$(echo "$sueldo_proporcional + $total_pagar_horas_extras" | bc)

# Calcular deducciones
# ISPT
if (( $(echo "$total_pagar <= 2500" | bc -l) )); then
    descuento_ispt=$(echo "$total_pagar * 0.06" | bc)
else
    descuento_ispt=$(echo "$total_pagar * 0.07" | bc)
fi

# IMSS
if (( $(echo "$total_pagar <= 3000" | bc -l) )); then
    descuento_imss=$(echo "$total_pagar * 0.03" | bc)
else
    descuento_imss=$(echo "$total_pagar * 0.04" | bc)
fi

# Cuota sindical
cuota_sindical=$(echo "$total_pagar * 0.02" | bc)

# Total de deducciones
total_deducciones=$(echo "$descuento_ispt + $descuento_imss + $cuota_sindical" | bc)

# Total neto a pagar
total_neto_pagar=$(echo "$total_pagar - $total_deducciones" | bc)

# Mostrar resultados
echo "Nombre del trabajador: $nombre"
echo "Direccion: $direccion"
echo "Puesto: $puesto"
echo "Sueldo semanal completo (por 7 días): $sueldo_semanal"
echo "Dias trabajados: $dias_trabajados"
echo "Sueldo proporcional por los días trabajados: $sueldo_proporcional"
echo "Horas extras trabajadas: $horas_extras"
echo "Total a pagar por horas extras: $total_pagar_horas_extras"
echo "Total a pagar (sueldo proporcional + horas extras): $total_pagar"
echo "Descuento ISPT: $descuento_ispt"
echo "Descuento IMSS: $descuento_imss"
echo "Cuota sindical: $cuota_sindical"
echo "Total de deducciones: $total_deducciones"
echo "Total neto a pagar: $total_neto_pagar"

# Este es un codigo de un examen que me dejaron en la materia de Taller de SO en el cuarto semestre, fue a puro scriptbash y la vdd me gusta mucho el uso de la
# terminal
