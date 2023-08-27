#!/bin/bash

echo "Atualizando Servidor"
echo " "
sudo apt update -y && apt upgrade -y
echo " "
echo " "
echo "Instalando o apache2"
echo " "
sudo apt-get install apache2 -y
echo " "
echo " "
echo "Instalando o unzip"
echo " "
sudo apt-get install unzip -y
echo " "
echo "Baixando a aplicacao do git e extraindo para /tmp"
sudo sudo wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip /tmp/main.zip
echo " "
echo " "
echo "Jogando arquivos no diretorio do apache"
sudo sudo mv /tmp/linux-site-dio-main/* /var/www/html/
echo " "
echo " "
echo "Script Concluido"