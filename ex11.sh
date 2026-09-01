#!/bin/bash


echo "1 - lista Simples"
echo "2 - lista Padrão"
echo "3 - lista Detalhada"
echo "4 - lista Completa"
echo "-------"


read -p "Escolha uma opção: " opcao


case "$opcao" in
    1)
        who -q
        ;;
    2)
        
        who
        ;;
    3)
 
        who -Hu
        ;;
    4)
    
        who -Ha
        ;;
    *)
        echo "digitou errado"
        who
        ;;
esac

