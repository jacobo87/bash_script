#!/bin/bash
clear

lista=(Jacobo Sara Norddine Amparo)

# En este caso nos muestra la posión 1 de la lista
for i in ${lista[@]} #Le dicimos que recorra toda la lista @ lo hace de forma indexada.
do
    if [[ $i == A* ]] # Sólo nombres que empiezan por A
    then
        echo $i
    fi
done