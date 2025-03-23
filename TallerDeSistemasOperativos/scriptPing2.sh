#! /bin/bash

echo "Programa para desbloquear ping remoto mediante ip"
echo "iniciando programa"
echo "-------------------------"
echo "Ingresa la ip remota"
read i
echo "-------------------------"
sudo /sbin/iptables -D INPUT -p icmp -s $i -j DROP
echo "-------------------------"
echo "Revision de reglas"
sudo /sbin/iptables -nL
echo "Fin del programa"
