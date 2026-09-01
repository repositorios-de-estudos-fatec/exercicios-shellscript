#!/bin/bash

read -p "digite o nome de um arquivo" arq

echo "1 - permissao 644"
echo "2 - 755"
echo "3 - 700"
echo "4 - digite a permissão"
echo "-------"


read -p "Escolha uma opção: " opcao



case "$opcao" in
    1)
        chmod 644 "$arq"
        ;;
    2)
        
        chmod 755 "$arq"
        ;;
    3)
 
        chmod 700 "$arq"
        ;;
    4)
        read -p "digite a permissão"  per
        chmod "$per" "$arq"
        ;;
    *)
        echo "digitou errado"
        who
        ;;
esac

