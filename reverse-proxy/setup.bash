#! /usr/bin/env bash
# install and configure nginx for the application stack
# usage:
#   ./setup.bash
sudo apt update
sudo apt install -y nginx
sudo cp nginx.conf /etc/nginx/nginx.conf 
sudo systemctl reload nginx
