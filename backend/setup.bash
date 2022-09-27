#!/usr/bin/env bash
# setup script for the server
# usage:
#   ./setup.bash
curl https://get.docker.com | sudo bash
sudo systemctl enable --now docker
sudo docker build -t backend .
sudo docker run -d -p 3000:3000 --name backend backend --restart
