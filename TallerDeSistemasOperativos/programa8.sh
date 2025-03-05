a=1
while [ $a -le 10 ]
do
	b=1
	while [ $b -le 30 ]
	do
		r=$(($b * $a))
		echo "$a * $b = $r"
		b=$(($b + 1))
	done
	echo "pulsa enter por favor"
	read z
	clear
	echo "ciclo no: $a"
	a=$(($a + 1))
done
