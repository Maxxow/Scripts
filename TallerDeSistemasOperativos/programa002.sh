echo "Dime un número"
read x
a=1
while [ $a -le 10 ]
do
r=`expr $a \* $x`
echo $x "*" $a "=" $r
a=`expr $a + 1`
done
