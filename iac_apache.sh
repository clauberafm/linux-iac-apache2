#!/bin/bash

echo "Updating the server..."

apt-get update
apt-get upgrade -y

echo "Installing Apache2 Web Server..."

apt-get install apache2 -y

echo "Installing unzip package..."

apt-get install unzip -y

echo "Downloading the respective application..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copying app. files to Apache2 default directory..."

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Process finished!"
