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

Create user **apprentice_db_user** 
```
create user 'apprentice_db_user'@'0.0.0.0' identified by 'apprentice-passwd';
```
grant all privileges on apprentice_database and flush it.
```
grant all privielges on  apprentice_database to 'apprentice_db_user'@'0.0.0.0';

flush privileges;
```

Access the site
```
http://[your-ip-address]:80
```