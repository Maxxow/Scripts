a=1
while [ $a -le 10 ]
do
	b=1
	while [ $b -le 10 ]
	do
	r=`expr $b \* $a `
	echo $a "*" $b "=" $r
	b=`expr $b + 1 `
	done
	echo "Pulsa enter por favor"
	read z clear
	a=`expr $a \+ 1`
done
