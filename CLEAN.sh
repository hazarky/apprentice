#!/bin/bash

########
# Purge FILE FOR Project Apprentice
# Project Apprentice gains inspriation from the Elgg project and provides its own implementation
########

function splash-screen () {
    printf "Welcome to apprentice cleanup"
}

function remove-elgg () {
    sudo apt remove /var/www/html/*
    sudo apt remove /var/www/apprentice-data
    echo "apprentice-cleanup log: Please remove composer binary located at $(whcih composer)" >> apprentice-clean.log
}
function remove-apache-php () {
    phpdismod pdo_mysql
    sudo a2dismod rewrite
    systemctl restart apache2

    echo "apprentice-cleanup log: disabled pdo_mysql and rewrite in apache" >> apprentice-clean.log
}
function remove-mysql () {
    sudo systemctl stop mysql
    sudo systemctl disable mysql
    echo "apprentice-cleanup log: disabled mysql database " >> aprentice-clean.log
}
function install-packages () {
    remove-apache-php
    sudo apt remove  -y php php-gd php7.4-mysql php-json php-xml php-mbstring php-intl ssmtp libapache2-mod-php
    remove-mysql
    sudo apt remove mysql-server
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

function done-screen () {
    printf "############\nCompleted!!\n############\n
    Project should be clean."
}
function main () {
    splash-screen
    remove-elgg
    remove-packages
    done-screen   
}

main