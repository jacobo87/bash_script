#!/bin/bash
clear
date +%D
echo "------"
echo "Jacobo Azmani ASIR"
echo

#Usar una lista externa (que esté en un fichero)
#El fichero externo será tratado como un argumento de input.
#Usar el bucle “while read line”
#Usar un condicional anidado que controle la generación de carpetas
#Usar un condicional restrictivo: Si el item de la lista tiene más de 5 caracteres, no se creará el directorio


# $2 sera equivalente al path de la lista
case $1 in
    [Mm]ake)
        echo "Creando directorios..."
        sleep 2s
        echo 
        echo "Directorios creados."
        i=0
        while read line
        do
            if [ -d $line ]
            then
                echo "El directorio ya existe."
            else
                if [ ${#line[$i]} -gt 5 ]
                then
                    echo "No puedo crear el direcotio $line: tiene mas de cinco caracteres."
                else
                    mkdir $line
                fi
            fi
        done < $2
    ;;
    *|help)
        echo "Indica make para saber como funciona el script"
    ;;
esac