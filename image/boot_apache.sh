#!/bin/sh

# link all applications from /hockey_data to /var/www/HockeyKit/server/php/public

for app in $(find /hockey_data/ -maxdepth 1 -type d -not -path /hockey_data/); do
  ln -s "$app" /var/www/HockeyKit/server/php/public/
done

export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
export APACHE_LOG_DIR=/var/log/apache2

exec /usr/sbin/apache2 -D FOREGROUND

