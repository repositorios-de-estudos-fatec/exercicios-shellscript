#!/bin/bash

read -p "digite arq1" arq1
read -p "digite arq2" arq2





if [ "$opcao" =  "4" ]; then
echo "tchau"
exit
fi


read -p "digite o nome do arquivo: " arq

case "$opcao" in 
1)
resul=$( find "$arq" )
echo "$resul"
;;
2)
resul=$( whereis "$arq" )
echo "$resul"
;;
3)
resul=$( locate $arq )
echo "$resul"
;;

*)
echo "valor invalido"
;;
esac



