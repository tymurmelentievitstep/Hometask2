#!/bin/bash

echo "----------------------------------------------------"
echo "Updating installed packages to their latest versions vm1"
echo "----------------------------------------------------"
yum -y update

echo "----------------------------------------------------"
echo "Installing epel-release package"
echo "----------------------------------------------------"
yum -y install epel-release

echo "----------------------------------------------------"
echo "Installing nginx"
echo "----------------------------------------------------"
yum -y install nginx

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
echo "Starting nginx service"
echo "----------------------------------------------------"
service nginx start