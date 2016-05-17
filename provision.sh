#!/bin/bash

echo "Provisioning virtual machine..."

echo "installing NGINX"
apt-get install nginx -y

echo "Updating PHP repository"
    apt-get install python-software-properties build-essential
    add-apt-repository ppa:ondrej/php5 -y
    apt-get update

echo "installing PHP"
   apt-get install php5-common php5-dev php5-cli php5-fpm -y
    
echo "Installing PHP extensions"
   apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y

echo "Configuring Nginx"
   cp /var/www/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost
   
   ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

   rm -rf /etc/nginx/sites-available/default

# Restart Nginx for the config to take effect
   service nginx restart

