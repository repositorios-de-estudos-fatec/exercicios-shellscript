read -p "digite uma palavra: " pala
read -p "digite um arquivo: " arq

resul=$(grep -wn "$pala" "$arq")

if [ -n "$resul" ]; then
echo "encontrada"
echo "$resul"
else
echo "não encontrado" 
fi