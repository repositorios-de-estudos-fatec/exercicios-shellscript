#!/bin/bash

read -p "Digite o processo que deseja procurar: " pro

resul=$(ps aux | grep "$pro" | grep -v grep)

if [ -z "$resul" ]; then
    echo "Nenhum processo foi encontrado"
else
    echo "$resul"
fi