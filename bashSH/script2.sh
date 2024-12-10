#!/bin/bash


name="Luis"         #* Toda asignacion de valor tiene que ir junta al =, de lo contrario no asginara
echo $name

ol=3
ols=20
operador=$((ol+ols))
echo $operador

#! Al usar "env" en la bash no mostrara variables predefinidas las cuales van a contener datos dentro, como en este ejemplo HOME y USERNAME
echo $HOME
echo $USERNAME