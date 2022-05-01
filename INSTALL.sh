#!/bin/bash

########
# INSTALLATION FILE FOR Project Apprentice
# Project Apprentice gains inspriation from the Elgg project and provides its own implementation
########

function splash-screen () {
    printf "Welcome to apprentice installation"
}

function install-elgg () {
    sudo apt install composer
    git clone https://github.com/Elgg/Elgg.git
    sudo mv Elgg/* /var/www/html
    sudo mkdir /var/www/html/data
    sudo chown -R www-data:www-data /var/www/html
    cd /var/www/html
    sudo composer install
}
function setup-php () {
    phpenmod pdo_mysql
    sudo a2enmod rewrite
    sudo a2enmod php
    systemctl restart apache2

}
function setup-mysql () {
    sudo systemctl start mysql
    sudo systemctl enable mysql
}
function install-packages () {
    sudo apt install mysql-server
    sudo mysql_secure_installation utility
    sudo ufw enable
    sudo ufw allow mysql 
    sudo ufw allow http
    setup-mysql
    sudo apt install -y php php-gd php7.4-mysql php-json php-xml php-mbstring php-intl ssmtp libapache2-mod-php
    setup-php

}
function setup-guide () {
    printf "After finishing base installation, you will need:\n
    1. Setup mysql and add the user.
    2. Go through the installation phase on the site.
    3. Build some users.
    ....
    4. Profit\n
    "
}
splash-screen
install-packages
install-elgg
setup-guide