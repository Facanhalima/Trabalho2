#!/bin/bash

cd Trabalho2

sudo apt-get install -y fortune

fortune > mensagem1.txt
fortune > mensagem2.txt
fortune > mensagem3.txt
cat mensagem1.txt
cat mensagem2.txt
cat mensagem3.txt

cat mensagem1.txt mensagem2.txt mensagem3.txt > mensagens.txt
cat mensagens.txt

cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens.txt

wc -l mensagens.txt | cut -b 1 > linhas.txt

egrep -o 'a' mensagens.txt | wc -l > letras.txt

ls -R /etc > saida.txt 2> erros.txt

ls -R /etc > saida_com_erros.txt 2>&1

cat /etc/passwd | cut -d ":" -f1 > usuarios.txt

cat /etc/passwd | cut -d ":" -f1 | sort > usuarios_ordenados.txt

