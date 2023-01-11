#!/bin/bash
service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mysql -u root -e "CREATE USER IF NOT EXISTS '${USER}'@'%' IDENTIFIED BY '${USR_P}';"
mysql -u root -e "GRANT ALL ON *.* TO '${USER}'@'%';"
mysql -u root wordpress < filename.sql
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${USR_P}';"
