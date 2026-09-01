#!/bin/bash

read -p "Digite o processo que deseja encerrar " pro

resul=$(ps aux | grep "$pro" )

if [ -z "$resul" ]; then
    echo "Nenhum processo foi encontrado"
else
    read -p "tem certeza? y/n" op
    
    if [[ "$op" == "y" ]]; then
        kill "$pro"
        echo "encerrado"
    else
        echo "cancelado"
        exit
    fi
fi