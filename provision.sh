#!/bin/bash

echo "Provisioning virtual machine..."

echo "installing NGINX"
apt-get update
apt-get upgrade -y
apt-get install nginx -y

rm /etc/nginx/sites-enabled/default
ln -s /vagrant/nginx_vhost /etc/nginx/sites-enabled

echo "installing apache"
apt-get install apache2 -y
rm -r /var/www/html
ln -s /vagrant/nginx_vhost /var/www/html

echo "installing PHP"
 
apt-get install php5-fpm -y

service php5-fpm restart
service nginx restart


