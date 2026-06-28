#!/bin/bash

apt update -y

apt install nginx -y

echo "<h1>Highly Available AWS Infrastructure</h1>" > /var/www/html/index.html
echo "<h2>Deployed using Auto Scaling Group and Application Load Balancer</h2>" >> /var/www/html/index.html
echo "<p>Host: $(hostname -f)</p>" >> /var/www/html/index.html