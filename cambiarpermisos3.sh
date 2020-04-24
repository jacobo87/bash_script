#!/bin/bash
clear
read -p "introduce el nombre del fichero o carpeta: " RUTA

if test -e $HOME/$RUTA; then
    echo "Los permisos del usuario son:"
    PU=$(ls -ld $HOME/$RUTA| cut -c 2-4)
    echo $PU
    echo "Los permisos del grupo son:"
    PG=$(ls -ld $HOME/$RUTA| cut -c 5-7)
    echo $PG
    echo "Los permisos de otros son:"
    PO=$(ls -ld $HOME/$RUTA| cut -c 8-10)
    echo $PO

    echo "r=lectura, w=escritura, x=ejecución"

    read -p "Permiso de lectura para el usuario s/n? " UR
    if [ $UR = "s" ]; then
        UR=4
    else
        UR=0
    fi
    
    read -p "Permiso de escritura para el usuario s/n? " UW
    if [ $UW = "s" ]; then
        UW=2
    else
        UW=0
    fi
    
    read -p "Permiso de ejecución para el usuario s/n? " UX
    if [ $UX = "s" ]; then
        UX=1
    else
        UX=0
    fi
    
    read -p "Permiso de lectura para el grupo s/n? " GR
    if [ $GR = "s" ]; then
        GR=4
    else
        GR=0
    fi
    
    read -p "Permiso de escritura para el grupo s/n? " GW
    if [ $GW = "s" ]; then
        GW=2
    else
        GW=0
    fi
    
    read -p "Permiso de ejecución para el grupo s/n? " GX
    if [ $GX = "s" ]; then
        GX=1
    else
        GX=0
    fi
    
    read -p "Permiso de lectura para otros s/n? " OR
    if [ $OR = "s" ]; then
        OR=4
    else
        OR=0
    fi
    
    read -p "Permiso de escritura para otros s/n? " OW
    if [ $OW = "s" ]; then
        OW=2
    else
        OW=0
    fi
    
    read -p "Permiso de ejecución para otros s/n? " OX
    if [ $OX = "s" ]; then
        OX=1
    else
        OX=0
    fi
    
    PU=$[$UR+$UW+$UX]
    PG=$[$GR+$GW+$GX]
    PO=$[$OR+$OW+$OX]
    
    chmod $PU$PG$PO $HOME/$RUTA
else
    echo "No existe el fichero o la carpeta"
fi