#!/bin/bash
echo "digite n1"
read n1
echo "digite n2"
read n2
echo "--------------"
echo "1 para soma"
echo "2 para subtração"
echo "3 para multiplicação"
echo "4 para divisão"
echo "5 para sair"

read opcao

if [ "$opcao" =  "5" ]; then
echo "tchau"
exit
fi

case "$opcao" in 
1)
resul=$(expr $n1 + $n2)
echo "resultado é $resul"
;;
2)
resul=$(expr $n1 - $n2)
echo "resultado é $resul"
;;
3)
resul=$(expr $n1 * $n2)
echo "resultado é $resul"
;;
4)
resul=$(expr $n1 / $n2)
echo "resultado é $resul"
;;
*)
echo "valor invalido"
;;
esac



