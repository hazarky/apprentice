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
    sudo cp apprentice-site/menus.css /var/www/html/views/default/elements/components/menus.css
    sudop chown -R www-data:www-data /var/www/html/views/default/elements/components/menus.css
    sudo cp apprentice-site/admin.css.php /var/www/html/views/default/admin.css.php
    sudo chown -R www-data:www-data /var/www/html/views/default/admin.css.php
    sudo cp apprentice-site/tabs.css /var/www/html/views/default/elements/components/tabs.css
    sudo chown -R www-data:www-data /var/www/html/views/default/elements/components/tabs.css
    sudo cp apprentice-site/wysiwyg.css /var/www/html/mod/ckeditor/views/default/elgg/wysiwyg.css
    sudo chown -R www-data:www-data /var/www/html/mod/ckeditor/views/default/elgg/wysiwyg.css
}
function main () {
    printf "Pushing apprentice-overlay\n"
    push-overlay
}
main