#!/bin/bash

echo "----------------------------------------------------"
echo "Updating installed packages to their latest versions vm2"
echo "----------------------------------------------------"
sudo apt -y update

echo "----------------------------------------------------"
echo "Installing nginx"
echo "----------------------------------------------------"
sudo apt -y install nginx

echo "----------------------------------------------------"
echo "Copying www-content directory"
echo "----------------------------------------------------"
cp -R /vagrant/www-content/ /usr/share/nginx/html/www-content

echo "----------------------------------------------------"
echo "Replacing nginx.conf file"
echo "----------------------------------------------------"
cp -f /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp -f /vagrant/configs/nginx.conf /etc/nginx/nginx.conf

echo "----------------------------------------------------"
echo "useradd"
echo "----------------------------------------------------"
sudo useradd --no-create-home nginx

echo "----------------------------------------------------"
echo "Starting nginx service"
echo "----------------------------------------------------"
service nginx start
sudo systemctl restart nginx