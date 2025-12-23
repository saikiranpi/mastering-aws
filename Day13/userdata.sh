#!/bin/bash
# Home Page User Data
# For 1A and 2A Home Page Servers

sudo apt update
sudo apt install -y nginx

# Replace the default <h1> content
sudo sed -i 's/<h1>Welcome to nginx!<\/h1>/<h1>Welcome to Homepage<\/h1>/' /var/www/html/index.nginx-debian.html

# Add additional content to the HTML file
echo '<a href="https://www.cloudvishwakarma.in/movies/">Visit For Movies</a>' | sudo tee -a /var/www/html/index.nginx-debian.html
echo '<br>' | sudo tee -a /var/www/html/index.nginx-debian.html
echo '<a href="https://www.cloudvishwakarma.in/shows/">Visit For Shows</a>' | sudo tee -a /var/www/html/index.nginx-debian.html

# Start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx
