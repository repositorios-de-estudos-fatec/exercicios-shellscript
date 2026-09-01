
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