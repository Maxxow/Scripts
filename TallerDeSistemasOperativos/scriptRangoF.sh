echo "Programa rango final de ip"
echo "Ingresa el segemento de red"
read x
echo "Ingresa el host inicial"
read y
echo "Ingresa el host final"
read z
while [ $y -le $z ]
do
	sudo /sbin/iptables -A INPUT -p tcp -s $x$y --dport 22 -j DROP
	y=$(($y + 1))
done
sudo /sbin/iptables -nL
