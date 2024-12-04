#!/bin/bash

echo "update system"
sudo apt update -y

echo "Installing Utilities"
sudo apt install zip unzip -y

echo "Installing Webserver NGINX"
sudo apt install nginx -y

echo " cleanup document root"
sudo rm -rf /var/www/html/*

echo "deploy login page"
sudo git clone https://github.com/sornapudi-shiva/2908.git /var/www/html/

echo "Application deployed - Browse the Application using IP"
