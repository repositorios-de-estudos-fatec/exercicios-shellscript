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