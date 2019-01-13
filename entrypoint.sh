#!/bin/sh
#htpasswd -cb /etc/apache2/webdav.password $USERNAME $PASSWORD
#chown root:apache /etc/apache2/webdav.password
#chmod 640 /etc/apache2/webdav.password
export APACHE_RUN_DIR=/tmp
export APACHE_LOG_DIR=/tmp
export APACHE_PID_FILE=/tmp/apache.pid
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
exec apache2 -X
