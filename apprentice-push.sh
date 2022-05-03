#!/bin/bash


function push-overlay () {
    #sudo mkdir /var/www/html/mod/apprentice/
    #sudo mkdir /var/www/html/mod/apprentice/views
    #sudo mkdir /var/www/html/mod/apprentice/default
    #sudo mkdir /var/www/html/mod/apprentice/default/elements
    #sudo mv apprentice-site/* /var/www/html/mod/apprentice/views/default/elements/
    #chown -R www-data:www-data /var/www/html/mod/apprentice
    sudo cp apprentice-site/theme.php /var/www/html/engine/theme.php
    chown -R www-data:www-data /var/www/html/engine/theme.php
}
function main () {
    printf "Pushing apprentice-overlay"
    push-overlay
}
main