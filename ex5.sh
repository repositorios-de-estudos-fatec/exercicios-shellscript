read -p "digite o usuario: " user

if grep -q "^${user}:" /etc/passwd; then
echo "usuario encontrado"
else
echo "usuario não encontrado" 
fi