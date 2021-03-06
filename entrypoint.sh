#!/bin/sh
#htpasswd -cb /etc/apache2/webdav.password $USERNAME $PASSWORD
#chown root:apache /etc/apache2/webdav.password
#chmod 640 /etc/apache2/webdav.password
export APACHE_RUN_DIR=/tmp
export APACHE_LOG_DIR=/tmp
export APACHE_PID_FILE=/tmp/apache.pid
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data

mkdir -p /cache/musicindex
chmod 777 /cache/musicindex
chown -R $APACHE_RUN_USER:$APACHE_RUN_GROUP /cache
exec apache2 -X
