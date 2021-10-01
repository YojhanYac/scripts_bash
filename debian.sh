#!/bin/bash
# -*- ENCODING: UTF-8 -*-
sudo apt update
sudo apt upgrade
sudo apt -y install apache2
sudo apt install -y mariadb-server
sudo mysql_secure_installation
sudo mysql -u root -p'XMPLAY1300' < db_wordpress.sql
sudo apt install -y php
sudo apt install -y php-xml
sudo apt install -y php-mysql
sudo apt install -y php-zip
sudo wget https://es.wordpress.org/latest-es_AR.tar.gz
sudo tar xf latest-es_AR.tar.gz -C /var/www/html
sudo mv wp-config.php /var/www/html/wordpress/
sudo systemctl restart apache2
sudo apt install -y curl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
cd 
wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
hostname -I