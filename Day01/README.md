
![Portfolio_Thumbnail](https://github.com/saikiranpi/mastering-aws/assets/109568252/df715451-e120-4ebc-b7e0-d3eadcbbce72)



######### DONT FORGET TO CHANGE THE DOMAIN NAME WITH YOUR NAME #########

-    DEPLOY AN EC2 ISNTANCE IN AWS USE UBUNTU 20

-    apt update && apt install -y nginx

-    sudo apt update && sudo apt install certbot python3-certbot-nginx

-    sudo mkdir -p /var/www/pinapathrunisaikiran.co.in/html

-    sudo chown -R $USER:$USER /var/www/pinapathrunisaikiran.co.in/html

-    sudo chmod -R 755 /var/www/pinapathrunisaikiran.co.in

-    nano /var/www/pinapathrunisaikiran.co.in/html/index.html

<html>
    <head>
        <title>Welcome to pinapathrunisaikiran.co.in!</title>
    </head>
    <body>
        <h1>Success! The pinapathrunisaikiran.co.in server block is working!</h1>
    </body>
</html>


-    sudo nano /etc/nginx/sites-available/pinapathrunisaikiran.co.in

server {
        listen 80;
        listen [::]:80;

        root /var/www/pinapathrunisaikiran.co.in/html;
        index index.html index.htm index.nginx-debian.html;

        server_name pinapathrunisaikiran.co.in www.pinapathrunisaikiran.co.in;

        location / {
                try_files $uri $uri/ =404;
        }
}


-    sudo ln -s /etc/nginx/sites-available/pinapathrunisaikiran.co.in /etc/nginx/sites-enabled/

-    sudo nginx -t

-    sudo systemctl restart nginx

sudo certbot certonly \
  --agree-tos \
  --email pinapathruni.saikiran@gmail.com \
  --manual \
  --preferred-challenges=dns \
  -d *.pinapathrunisaikiran.co.in \
  --server https://acme-v02.api.letsencrypt.org/directory
  
 
 
FOR HTTP TO HTTPS FORWARDING RUN THE BELOW COMMAND.
 
 certbot --nginx
