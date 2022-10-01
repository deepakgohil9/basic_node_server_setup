#! /bin/bash

# installing npm and nginx
sudo apt update
sudo apt install -y nginx npm

# changing directory & updating the default config file
cd /etc/nginx/sites-available
sudo rm default
sudo curl https://raw.githubusercontent.com/GohilDeepak009/basic_node_server_setup/main/default -o default

#creating a node server
cd
mkdir server
cd server
curl https://raw.githubusercontent.com/GohilDeepak009/basic_node_server_setup/main/http_node_server.js -o index.js

#starting nginx
sudo /etc/init.d/nginx start

#printing ip
echo "Your IP is: "
hostname -I

#staring node server
node index.js

#comment
