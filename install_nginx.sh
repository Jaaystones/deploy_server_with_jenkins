#!/bin/bash

# Fix any interrupted package installations
sudo dpkg --configure -a

# Install Nginx
sudo apt-get update
sudo apt-get install nginx -y

# Restart Nginx service
sudo systemctl restart nginx
sudo systemctl enable nginx

