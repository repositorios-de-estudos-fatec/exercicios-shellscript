#!/bin/bash


echo "===== INFORMAÇÕES DO SISTEMA ====="
echo "1 - Data atual"
echo "2 - Versão do kernel"
echo "3 - Calendário"
echo "4 - Tempo de funcionamento"
echo "5 - Usuários conectados"
echo "6 - Processos em execução"
echo "7 - Sair"
echo "==================================="
read -p "digite a opcao" op


case "$op" in
1)
echo "data atual: "
date
;;
2)
echo "versão do kernel: "
uname
;;
3)
echo "calendario:"
cal
;;
4)
echo "funcionamento do sistema:"
uptime
;;
5)
who -q
;;
6)
echo "abaixo mostraremos os processos em execução no sistema"
ps aux
;;
7)
echo "tchau"
exit
;;

*)
echo "comando errado"

;;
esac






