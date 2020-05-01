#!/bin/bash
clear
date
# Declaro las variables
nombre="Jacobo Azmani"
curso=ASIR

echo "---------------------------------------------"
echo "$nombre $curso"
echo "------------------"

# Declarar array (lista) las listas empizan desde 0
lista=(uno dos tres)
#añado mas numeros a la lista haciendo referencia a la posicion
lista[3]="cuatro"
lista[4]="cinco"
echo ""
echo "La lista contiene los valores: ${lista[*]}."
echo "La lista tiene un total de ${#lista[*]} items."
echo "El segundo valor de la lista tiene ${#lista[1]} caracteres."
echo ""
# Si el comando anterior es = 0 primer echo.
if [ $? -eq 0 ]
then
    echo "El comando anterior ha finalizado OK."
else
    echo "El comando anterior ha fallado."
fi
