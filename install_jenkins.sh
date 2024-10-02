#!/bin/bash
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
# Install jenkins
sudo apt-get install jenkins
# install Java
sudo apt-get install openjdk-11-jdk
# enable Jenkins
sudo systemctl enable jenkins
# Start the service
sudo systemctl start jenkins
# Check status
sudo systemctl status jenkins