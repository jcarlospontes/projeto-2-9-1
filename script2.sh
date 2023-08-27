#!/bin/bash

echo "Atualizando Servidor"
echo " "
sudo apt update -y && apt upgrade -y

Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
Copiar os arquivos da aplicação no diretório padrão do apache;
Subir arquivo de script para um repositório no GitHub.

echo " "
echo "Instalando o apache2"
echo " "
sudo apt-get install apache2 -y

echo " "
echo "Instalando o unzip"
echo " "
sudo apt-get install unzip -y

echo "Baixando a aplicacao do git e extraindo para /tmp"
sudo sudo wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip /tmp/main.zip
echo " "
echo "Jogando arquivos no diretorio do apache"
echo " "
sudo mv /tmp/linux-site-dio-main/* /var/www/html/

echo "Script Concluido"