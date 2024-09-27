#!/bin/bash

# Update package lists
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Restart Nginx
sudo systemctl restart nginx

# Output the public IP
#echo "Public IP: $(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)"