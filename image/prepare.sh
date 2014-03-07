#!/bin/sh

apt-get update
apt-get -y install libapache2-mod-php5 git
[ $? -ne 0 ] && exit 1

cp /build/hockey.conf /etc/apache2/sites-enabled/
cp /build/ports.conf /etc/apache2/

(cd /var/www && git clone https://github.com/TheRealKerni/HockeyKit.git)
[ $? -ne 0 ] && exit 1

mkdir /hockey_data

chown -R www-data.www-data /hockey_data /var/www/

cp /build/boot_apache.sh /
