#! /bin/bash
#clear
date
echo "---------------------------------------------"
echo "Jacobo Azmani"
read -p "Escriba el nombre de fichero o directorio: " archivo
if [ -d $archivo ]; then
    echo $archivo" es un directorio."
    sleep 1s
    echo "Contenido de directorio "$archivo":"
    ls $archivo
else
    if [ -e $archivo ]; then
        echo "Esto es un fichero."
    else
        echo "Error el nombre introducido: "$archivo", no existe."
    fi
fi