#!/bin/bash



echo "--------------"
echo "1 usar find"
echo "2 usar whereis"
echo "3 usar locate"
echo "4 para sair"

read opcao



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



