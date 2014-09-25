#!/bin/sh

# usage ./runme.sh site

# the site above determines the database prefix and is a standard
# way of wordpress to distinguish different wp installations sharing
# the same database

# mysql is the persistent storage and the only thing updated by this image
# change the directory below to suit your needs
# the ownership is determined by the apache user id in the Docker container
MYSQL_DIR=~/mysql

if [ ! -d $DIR ]; then
    mkdir $DIR
fi

if [ "$1" != "" ]; then
    mysite=$1
fi

docker run --rm -p 80:80 -v $MYSQL_DIR:/var/lib/mysql --env SITE=$mysite meri/wp
