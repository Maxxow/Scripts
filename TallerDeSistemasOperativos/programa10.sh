echo "Dime tu edad"
read x
if [ $x -le 2 ]
then
	echo "Eres un bebe wtf is that shit xD"
	else
	echo "__"
fi
if [ $x -gt 2 ] && [ $x -le 17 ]
then
	echo "Eres un  niño(a)"
	else if [ $x -gt 2 ] && [ $x -le 25 ]
	then
		echo "Eres joven jijija"
		else if [ $x -gt 25 ] && [ $x -le 55 ]
		then
			echo "Eres suegro(whaaaat?)"
			else if [ $x -gt 55 ]
			then
				echo "eres abuelito jajajajaja COMO RODO"
			fi
		fi
	fi
fi
