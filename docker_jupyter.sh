#!/bin/bash
git clone git@github.com:joshuacook/dotfiles
cd dotfiles
./bash_load.sh
cd
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ubuntu
sudo docker pull jupyter/datascience-notebook
