#!/bin/bash

echo "ATUALIZAÇÃO DO SERVIDOR"

apt-get update
apt-get upgrade -y


echo "INSTALAÇÃO DO APACHE2"

apt-get install apache2 -y


echo "INSTALAÇÃO DO UNZIP"

apt-get install unzip -y


echo "BAIXANDO A APLICAÇÃO ESCOLHIDA NO DIRETÓRIO /tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "DESCOMPACTANDO ARQUIVO main.zip"

unzip main.zip


echo "COPIANDO OS ARQUIVOS DA APLICAÇÃO PARA O DIRETÓRIO PADRÃO DO APACHE"

cd linux-site-dio-main
cp -R * /var/www/html
