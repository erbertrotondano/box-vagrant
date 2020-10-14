#!/bin/bash

# Updating repository

sudo apt-get -y update
sudo apt-get -y upgrade
sudo add-apt-repository ppa:ondrej/php
# Installing Apache

sudo apt-get -y install apache2

# Installing MySQL and it's dependencies, Also, setting up root password for MySQL as it will prompt to enter the password during installation

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password rootpass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password rootpass'
sudo apt-get -y install mysql-server php7.4-mysql

# Installing PHP and it's dependencies
sudo apt-get -y install php7.4 libapache2-mod-php7.4
