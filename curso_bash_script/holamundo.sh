#!/bin/bash
clear
#date nos muestra la fecha
# +%D nos muestra la fecha con formato corto
date +%D
# Declaro las variables
nombre="Jacobo Azmani"
curso=ASIR

echo "--------"
echo "$nombre $curso"
echo "------------------"


read -p "Introduzca su nombre: " nombre
if [ "$nombre" == "Jacobo Azmani" ]
then
    echo "Hola $nombre."
else #Solo se ejecutara si tu nombre no es Jacobo Azmani
    echo "Como no te llamas Jacobo, no te voy a saludar."
fi