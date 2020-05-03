#!/bin/bash
clear
date +%D
echo "--------"
echo "Jacobo Azmani ASIR"
echo
pos=1
while read LINE
do
    echo "Línea $pos: $LINE"
    ((pos++))
    
done <$1