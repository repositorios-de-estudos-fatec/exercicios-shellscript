#!/bin/bash

read -p "Digite o nome do usuário: " user


if grep -q "^$user:" /etc/passwd; then

    nome=$(grep "^$user:" /etc/passwd | cut -d ":" -f 1)
    home=$(grep "^$user:" /etc/passwd | cut -d ":" -f 6)

    espaco=$(du -sh "$home" 2>/dev/null | cut -f1)

    echo "-----------------------------"
    echo "Nome do usuário: $nome"
    echo "Diretório home: $home"
    echo "Espaço utilizado: $espaco"
    echo "-----------------------------"

else
    echo "Usuário '$user' não existe no sistema."
fi