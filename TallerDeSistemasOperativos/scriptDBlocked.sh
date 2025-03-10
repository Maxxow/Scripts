#! /bin/bash

echo "Inicio del script"
echo "Ingresa la ip a desbloquear"
read i
echo "Iniciando desbloqueo"
echo "------------------"
sudo /sbin/iptables -D INPUT -p tcp -s $i --dport 22 -j DROP
echo "Finalizado"
