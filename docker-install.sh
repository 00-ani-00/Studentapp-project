#!/bin/bash
sudo -i
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu   #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
