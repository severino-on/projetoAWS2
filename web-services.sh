#!/bin/bash
echo "########################## Iniciando processo de provisionado ################################"
sleep 2
echo "Baixando atualização do sistema..."
apt-get update -y

echo "Instalando atualização do sistema..."
apt-get upgrade -y

echo "Iniciando instalação servidor web..."
apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Baixando aplicação web..."
sleep 2
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicação..."
unzip main.zip
sleep 2
echo "Copiando web site..."
sleep 2
cd linux-site-dio-main
cp -R * /var/www/html/
sleep 2
echo "Provisionamento de site DIO provisionado com sucesso!"