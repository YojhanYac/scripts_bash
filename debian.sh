#!/bin/bash
# -*- ENCODING: UTF-8 -*-
sudo apt update
sudo apt upgrade
sudo apt -y install apache2
hostname -I
sudo apt update
sudo apt upgrade
sudo apt install -y gnupg
sudo apt-get -y install mysql-community-server