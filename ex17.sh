#!/bin/bash

read -p "digite o nome de um arquivo" arq
l=$(wc -l $arq)
w=$(wc -w $arq)
c=$(wc -m $arq)
echo "arquivo: $arq"
echo "linhas: $l" 
echo "palavras: $w" 
echo "caracteres: $c" 
