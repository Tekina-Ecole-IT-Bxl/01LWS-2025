#!/bin/bash

service mysql start
sleep 3

if [ ! -d "/var/lib/mysql/webdb" ]; then
  mysql -e "CREATE DATABASE webdb;"
  mysql -e "CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'webpass';"
  mysql -e "GRANT ALL PRIVILEGES ON webdb.* TO 'webuser'@'localhost';"
  mysql -e "FLUSH PRIVILEGES;"
fi

service apache2 start
service ssh start
service vsftpd start

tail -f /dev/null