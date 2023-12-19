#!/bin/bash
sudo -i
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu   #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock

##for forward for becaus jenkins run on 8080 and tomcat also 8080 so jenkin forward to 8081
sudo systemctl stop jenkins
sudo systemctl status jenkins
cd /etc/default
sudo vi jenkins   #chnage port HTTP_PORT=8090 and save and exit
cd /lib/systemd/system
sudo vi jenkins.service  #change Environments="Jenkins_port=8090" save and exit
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
