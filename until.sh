#! /bin/bash
clear
until [[ $OPCION = 4 ]] 
do
echo "
RESTAURANTE JACOBO´S: MENÚ DEL DÍA: 1.- Primer plato 2.- Segundo plato, 3.- Postre y 4.- Salir"
read -p "Escribe aquí tu opción: " OPCION 
  case $OPCION in 
  1) echo "Chuletas de ternera, salmorejo, postres varios";;
  2) echo "Solomillo, patatas a lo pobre, postres varios";;
  3) echo "Flamenquin, sopa de cebolla, postres varios.";;
  4) echo "Gracias vuelva pronto" ;;
  *) echo "Debes elegir una opción";;
  esac 
done