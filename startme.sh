#!/bin/sh

/etc/init.d/mysqld start
/etc/init.d/httpd start

DIR="/var/lib/mysql/WordPressdb"

if [ -d $DIR ] && [ "$(ls -A $DIR)" ]; then
    echo "Using existing Wordpress database"
    if [ "$SITE" != "" ]; then
        echo "With $SITE database table prefix"
    fi
else
    mysql -u root < create_new_database.sql
fi

while true; do
    sleep 1000
done

