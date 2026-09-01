#!/bin/bash


echo "=====  GERENCIAMENTO DE ARQUIVOS  ====="
echo "1 - Procurar arquivo"
echo "2 - Procurar palavra em arquivo"
echo "3 - Renomear arquivo"
echo "4 - Mover arquivo"
echo "5 - Remover arquivo"
echo "6 - Comparar arquivos"
echo "7 - Sair"
echo "==================================="
read -p "digite a opcao" op


case "$op" in
1)
read -p "digite o nome do arquivo: " arq
resul=$( find "$arq" )
echo "$resul"
;;
2)
read -p "digite uma palavra: " pala
read -p "digite um arquivo: " arq

resul=$(grep -wn "$pala" "$arq")

if [ -n "$resul" ]; then
echo "encontrada"
echo "$resul"
else
echo "não encontrado" 
fi
;;
3)
read -p "digite o nome do arq" arq
read -p "digite o novo nome do arq" narq
if [ -e "$arq" ]; then
echo "existe"
 if mv "$arq" "$narq";then
 echo "arquivo renomeado"

 else
 echo "erro de permissao, não foi possivel renomear"

 fi

else
echo "arquivo nao existe"
fi
;;
4)
read -p "digite o nome do arq" arq
read -p "digite o destino " des
if [ -e "$arq" ]; then
echo "existe"
 if mv "$arq" "$des";then
 echo "arquivo renomeado"

 else
 echo "erro de permissao, não foi possivel mudar"

 fi

else
echo "arquivo nao existe"
fi
;;
5)
read -p "digite o nome de um arquivo para apagar " arq
if [ -e "$arq" ]; then
echo "arquivo encontrado"
   if rm "$arq"; then
   echo "apagou com sucesso "
   else
   echo "problema de permissão"
   fi
else
echo "arquivo nao encontrado"
fi
;;
6)

read -p "digite arq1" arq1
read -p "digite arq2" arq2


diff $arq1 $arq2 

;;
7)
echo "tchau"
exit
;;

*)
echo "comando errado"

;;
esac


