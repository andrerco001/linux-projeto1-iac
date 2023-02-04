#!/bin/bash

echo "Atualizar o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalar o apache2..."
apt-get install apache2 -y

echo "Instalar o unzip..."
apt-get install unzip -y

echo "Baixar a aplicação disponível no Github..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar o arquivo main.zip"
unzip main.zip

echo "Entrando no diretório linux-site-dio-main"
cd linux-site-dio-main

echo "Copiar os arquivos da aplicação no diretório padrão do apache..."
cp -R * /var/www/html/

echo "Fim"