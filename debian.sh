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
sudo chown -R www-data:www-data /var/www/html/
sudo systemctl restart apache2
sudo apt install -y curl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
cd 
sudo wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
sudo echo 'source /home/debian/wp-completion.bash' >> /home/debian/.bashrc
cd /var/www/html/
sudo -u www-data wp core download --locale=es_AR
sudo -u www-data wp core config --dbname='wordpress' --dbuser='worpress' --dbpass='password123' --dbhost='localhost' --dbprefix='wp_'
sudo -u www-data wp core install --url='111.111.11.111' --title='Alto blog, ameo!' --admin_user='USUARIO_WORDPRESS' --admin_password='PASSWORD_WORDPRESS' --admin_email='momavac620@ergowiki.com'
hostname -I