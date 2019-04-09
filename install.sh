#!/bin/bash
set -e 

info(){
    echo -e "\e[93m-> $1 \e[39"
}


info "-> Deinstall phpmyadmin apache2 mysql-server" 
apt purge phpmyadmin
apt purge apache2
apt purge mysql-server


info "-> Install phpmyadmin apache2 mysql-server"
apt install -y mysql-server 
apt install -y apache2
apt install -y phpmyadmin