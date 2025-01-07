#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx
echo "<h1>$(cat /etc/hostname)</h1>" >> /var/www/html/index.nginx-debian.html
echo "<h1>US-EAST-1A-SERVERS</h1>" >> /var/www/html/index.nginx-debian.html
