#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade

echo "Instalando o apache2 e o unzip..."

apt install apache2 -y
apt install unzip -y

echo "Baixando os arquivos da aplicação HTML..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Movendo todos os arquivos para a pasta padrão do apache2..."

mv main.zip /var/www/html
cd /var/www/html

echo "Extraindo os arquivos baixado..."

unzip main.zip
rm index.html
rm -f -R main.zip

echo "Procedimento realizado com sucesso! PODE COMEMORAR!!" 

 
