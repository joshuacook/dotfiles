#!/bin/bash
git clone https://github.com/joshuacook/dotfiles
cd dotfiles
./bash_load.sh
cd
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ubuntu
sudo docker pull jupyter/datascience-notebook
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
mu
