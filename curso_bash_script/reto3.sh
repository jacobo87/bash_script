#!/bin/bash
clear
#Uso de “case” para evaluear si el usuario quiere comprobar
#la existencia de los ficheros o crearlos
#En la comprobación usaremos un bucle while
#En la creación usaremos un bucle for

#Lista con directorios
dirs=(/curso_bas_script /prueba /nuevo)

case $1 in
    
    [Cc]heck) # Si elegimos check le diremos que chekee el directorio, [Cc] le indicamos que acepte tanto mayuscula como minuscula.
        echo "Comprobando la(s) carpeta(s)."
        i=0
        while [ $i -lt ${#dirs[*]} ]
        do
            if [ -d ${disrs[$i]} ] #Si existe dentro de la lista 
            then
                echo "${dirs[$i]} existe"
            else
                echo "${dirs[$i]} no existe"
            fi
            ((i++))
    done;;
    
    [Mm]ake) # Si le decimos make, al comprobar que no existe creara el directorio
        echo "Creando carpeta(s)."
        for x in ${dirs[@]}
        do
            if  [ -d $x ]
            then
                echo "El directorio $x ya existe."
            else
                echo "Creando el directorio $x."
                mkdir $x
            fi
    done;;
    
    *) echo "ERROR: Debes indicar check o make";; # Informamos de error si no le indicamos nada
esac
