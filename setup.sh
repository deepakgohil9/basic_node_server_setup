#! /bin/bash


# installing npm and nginx
sudo apt install nginx npm

# changing directory & updating the default config file
cd /etc/nginx/sites-available
rm default
curl <url> -o default

#creating a node server
cd
mkdir server
cd server
curl <url> -o index.js

#starting nginx
sudo /etc/init.d/nginx start
