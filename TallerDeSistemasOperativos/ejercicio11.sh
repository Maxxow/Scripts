echo "Programa para matricula"
echo "_______________________"
fecha=$( date + "%Y" )
echo "$fecha"
echo "Tu numero de control es: $fecha$p$c$z"
echo "ingresa el numero de periodo
	1 si es otra institucion
	2 si fue por examen de admision"
read p
if [ $p -ge 1 ] && [ $p -le 2 ]
then
	echo "Tu año de periodo es: $p"
	else
	echo "Tu año de periodo es incorrecto"
fi
echo "_______________________________________"
echo "Ingresa el numero de tu carrera:
1.-	ING Industrial
2.-	ING Tic´s
3.-	ING Sistemas
4--	ING Quimica
5.-	ING Mecatronica
6.-	ING Civil
7.-	ING Logistica
8.-	LIC Administracion"
read c
if [ $c -le 8 ]
then
	echo "Es correcto?"
	else
	echo "Es incorrecto?"
fi
echo "Ingresa tu numero de alumno"
read z
if  [ $z -gt 0 ] && [ $z -lt 10 ]
then
	echo "$fecha""$p""$c""00$z"
	else if [ $z -gt 10 ] && [ $z -lt 100 ]
	then
		echo "$fecha""$p""$c""0$z"
		else if [ $z -gt 100 ] && [ $z -lt 1000 ]
		then
			echo echo "$fecha""$p""$c""$z"
		fi
	fi
fi
echo "___________________________________________"
echo "Fin del programa"
