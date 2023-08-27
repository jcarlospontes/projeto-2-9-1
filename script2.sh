#!/bin/bash

echo "Atualizando Servidor"
sudo apt update -y && apt upgrade -y

Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
Copiar os arquivos da aplicação no diretório padrão do apache;
Subir arquivo de script para um repositório no GitHub.

echo "Instalando o apache2"
sudo apt-get install apache2 -y

echo "Instalando o unzip"
sudo apt-get install unzip -y

echo "Baixando a aplicacao do git e extraindo para /tmp"
sudo sudo wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip /tmp/main.zip

echo "Jogando arquivos no diretorio do apache"
sudo mv /tmp/linux-site-dio-main/* /var/www/html/

echo "Subindo para github"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Agrupando Usuarios"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Permissoes Diretorios"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Script Concluido"