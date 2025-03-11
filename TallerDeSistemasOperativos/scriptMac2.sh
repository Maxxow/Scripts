#! /bin/bash

echo "Programa para desbloquear direccion MAC"
echo "iniciando programa"
echo "------------------------"
echo "Ingresa la direccion MAC"
read m
echo "------------------------"
sudo /sbin/iptables -D INPUT -m mac --mac-source $m -j DROP
echo "desbloqueado completo"
echo "Revision de reglas"
sudo /sbin/iptables -nL
echo "Fin Del programa"
