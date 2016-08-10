#!/bin/bash
# /usr/bin/mysqld_safe &
# sleep 5
# mysql -uroot -proot -e "CREATE DATABASE acqiopay_dev"
# mysql -uroot -proot acqiopay_dev < /tmp/acqiopay_dev.sql
#!/bin/sh

#this is a hack to wait until the DB image is up and the port is open
until mysqladmin -u root -proot -h dev_mysql_test_1.local ping; do
   echo "$(date) - waiting for mysql"
   sleep 3
done

if ! mysql -u root -proot -h dev_mysql_test_1 -e 'use acqiopay_dev'; then
   mysql -u root -proot -h dev_mysql_test_1  -e "CREATE DATABASE acqiopay_dev"
fi

exec "$@"