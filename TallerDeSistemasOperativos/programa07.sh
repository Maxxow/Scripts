fecha=$( date +"%Y")
echo "$fecha"
echo "tu numero de control es: $fecha$p$c$z"
echo "Ingresa el numero de perido dependiendo como entraste
	 1 Si vienes de otra institucion
	 2 Si fue mediante examen de admision"
read p
if [ $p -ge 1 ] && [ $p -le 2 ] 
then 
echo "Tu numero de periodo es:$p"

echo "ingresa el numero de tu carrera: 
1. ING industrial
2. ING Tics
3. ING sistemas
4. ING Quimica
5. INg Mecatronica
6. INg civil 
7. INg Logistica 
8. LIC Administracion"
read c
if [ $c -le 8 ] 
then 
echo "Es correcto"
else 
echo "Es incorrecto"
fi
echo "Ingresa tus numero de alumno"
read z
if [ $z -gt 0 ] && [ $z -lt 10 ]
then 
echo "$fecha""$p""$c""00$z"
else if [ $z -gt 10 ] && [ $z -lt 100 ]
then 
echo "$fecha""$p""$c""0$z"
else if [ $z -gt 100 ] && [ $z -lt 1000 ]
then 
echo "$fecha""$p""$c""$z"
fi
fi
fi
else
echo "tu año de periodo es incorrecto:$p"
fi
