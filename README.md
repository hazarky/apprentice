#   Apprentice guide
Welcome to the apprentice project guide


## Getting started
 Download the repo

 run the INSTALL.sh script
```
./INSTALL.sh
```
configure the database and have the admin user **admin** with password **apprentice**
```
 CREATE DATABSASE apprentice_database;
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
grant all privielges on  apprentice_database to 'apprentice_user'@'localhost';

flush privileges;
```

Access the site
```
http://[your-ip-address]:80
```

Setup the site based on the settings we previously introduced for the database.

Once the base site is setup, run the **apprentice-push.sh** script.
```
./apprentice-push.sh
```
