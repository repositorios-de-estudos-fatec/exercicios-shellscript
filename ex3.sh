read -p "digite o nome do arq" arq
read -p "digite o novo nome do arq" narq
if [ -e "$arq" ]; then
echo "existe"
 if mv "$arq" "$narq";then
 echo "arquivo renomeado"

 else
 echo "erro de permissao, não foi possivel apagar"

 fi

else
echo "arquivo nao existe"
fi