#! bin/bash
#clear
date
echo "---------------------------------------------"
echo "Jacobo Azmani ASIR"
echo "------------------"
read -p "Caracteres a buscar: " caracteres
until [[ $caracteres = + ]]; do
    echo " Resultados de la búsqueda:"
    #'iname' para que busque mayúsculas y minúsculas, tambien tengo que introducir la ruta completa si no, con '/' buscaba en toda la raiz.
    find  /Users/mac/Documents/GitHub/bash_script -iname "*$caracteres*"
    read -p "Introduce '+' para salir o introduce una nueva búsqueda: " caracteres
done