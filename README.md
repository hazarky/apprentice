#   Apprentice guide
Welcome to the apprentice project startup guide!

The project is based on the framework from [elgg](https://github.com/Elgg/Elgg) social network platform.

## Getting started
 Download the repo

 run the INSTALL.sh script
```
./INSTALL.sh
```
configure the database and have the admin user **apprentice_user** with password **apprentice**
```
 CREATE DATABASE apprentice_database;
```
use the newly created database
```
 use apprentice_database;
```

Create user **apprentice_user** 
```
create user 'apprentice_user'@'localhost' identified by 'apprentice';
```
grant all privileges on apprentice_database and flush it.
```
grant all privileges on  apprentice_database to 'apprentice_user'@'localhost';

flush privileges;
```
Access the directory **/var/www/html** and run **composer install**
```
cd /var/www/html

sudo composer install
```


Access the site
```
http://[your-ip-address]:80
```

if there is an issue stating that rewrite capabilities is not available then 
edit **/etc/apache2/apache2.conf**, create a section that specifies the directory
where the apprentice directory is located, and specifically put **AllowOverride All**.
Then restart the apache2 service.


Setup the site based on the settings we previously introduced for the database.

Once the base site is setup, run the **apprentice-push.sh** script.
```
./apprentice-push.sh
```
Then the Webapp will be completed! 
