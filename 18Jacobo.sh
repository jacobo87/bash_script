#!/bin/bash
clear
DIRECTORIO="/Users/mac/Documents/GitHub/bash_script/"
date
echo "---------------------------------------------"
echo "Jacobo Azmani"
if [ $# = 2 ]; then
    if test -d $DIRECTORIO/$1; then
        if test -e $DIRECTORIO/$1/$2; then
            ls $DIRECTORIO/$1/$2
        else
            echo "No existe el fichero."
        fi
    else
        echo "No existe el directorio."
    fi
else
    echo "No ha pasado el número correcto de argumentos"
fi