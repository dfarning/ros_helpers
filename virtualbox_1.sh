#!/bin/bash

sudo sh -c "echo 'Acquire::HTTP::Proxy \"http://192.168.1.10:3142\";' >> /etc/apt/apt.conf.d/01proxy"

sudo sh -c "echo 'Acquire::HTTPS::Proxy \"false\";' >> /etc/apt/apt.conf.d/01proxy"

sudo apt update -y
sudo apt upgrade -y


sudo apt update -y
sudo apt install -y git

git config --global user.name "David Farning"
git config --global user.email "dfarning@gmail.com"

sudo apt install build-essential

# Insert Guest Additions CD
