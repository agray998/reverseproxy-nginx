#! /usr/bin/env bash
# setup script for web-app
# usage:
#   ./setup.bash

# install web application files
sudo mkdir /opt/web-app
sudo cp -r . /opt/web-app
# configure nginx
sudo apt update
sudo apt install -y nginx
sudo systemctl enable --now nginx
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo systemctl reload nginx
