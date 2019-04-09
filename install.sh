#!/bin/bash
set -e 

info(){
    echo -e "\e[93m-> $1 \e[39m"
}


info "-> Deinstallation phpmyadmin apache2 mysql-server" 
apt purge -y phpmyadmin apache2 mysql-server

info "-> Installation phpmyadmin apache2 mysql-server"
apt install -y apache2 php libapache2-mod-php mysql-server php-mysql phpmyadmin
info "-> deactivation mpm_event"
a2dismod mpm_event
info "-> activation php"
a2enmod php7.2
info "-> Redemarrage d'apache"
service apache2 restart

