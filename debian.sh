#!/bin/bash
# -*- ENCODING: UTF-8 -*-
sudo apt update
sudo apt upgrade
sudo apt -y install apache2
hostname -I
sudo apt update
sudo apt upgrade
sudo apt install -y gnupg
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.19-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.19-1_all.deb
sudo apt update
sudo apt upgrade
sudo apt remove -y mysql-apt-config
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.19-1_all.deb
sudo apt install ./mysql-apt-config_0.8.19-1_all.deb
sudo sed -i  "s/jessie/buster/g" /etc/apt/sources.list.d/mysql.list
sudo apt update
sudo apt install mysql-server
sudo apt update
sudo apt upgrade
sudo apt-get -y install mysql-community-server
sudo apt update
sudo apt upgrade