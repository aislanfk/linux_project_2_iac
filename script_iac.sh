#!/bin/bash

echo "Atualizando servidor..."
apt-get update -y
apt-get upgrade -y

echo "Baixando apache..."

apt-get install apache2 -y

echo "Baixando unzip..."

apt-get install unzip -y

echo "Copiando os arquivos da aplicao..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
