#!/bin/bash
if ["$1" == ""]
then
	echo "ELIZEUOPAIN - DNS RECON"
	echo "Modo de uso: $0 site wordlist.txt"
	echo "Exemplo1: $0  example1.com.br rockyou.txt"
	echo "Exemplo2: $0  example2.com.br /home/wordlist/rockyou.txt"
else
for palavra in $(cat $2);
do
host $palavra.$1 | grep "has"
done
fi
