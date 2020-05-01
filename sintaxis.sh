#!/bin/bash
clear
date
# Declaro las variables
nombre="Jacobo Azmani"
curso=ASIR

echo "---------------------------------------------"
echo "$nombre $curso"
echo "------------------"

num1=1
num2=2

num3=$((num1 + num2))
num4=$((num1 - num2))
num5=$((num1 * num2))
# En la division bash no trata decimales por eso aproxima a 0
num6=$((num1 / num2))
num7=$((num1 % num2))

echo $num3 $num4 $num5 $num6 $num7

if [ $num1!=$num2 ]
then
    echo "$num1 y $num2 no son iguales."
else
    echo "$num1 y $num2 son iguales."
fi

echo ""
# podemos usar tambien el homologo en string -ne, tiene que ir entre ""
if [ "$num1" -ne "$num2" ]
then
    echo "$num1 y $num2 no son iguales."
else
    echo "$num1 y $num2 son iguales."
fi


echo ""
# entramos en un bucle de string
FILE="/User/mac/Documents/GitHub/bash_script/"

if [ -d $FILE ] 
then
    echo "$FILE existe y es un directorio."
else
    echo "No existe y no  es un directorio."
fi


# Comprobamos si tiene permisos de lectura Y ADEMAS de ejecucion
if [ -r $FILE ] && [ -x $FILE ]
then
    echo "OK! $FILE tiene permisos de lectura y ejecución."
else
    echo "OJO! $FIlE no tiene permisos de lectura y ejecución."
fi


