#!/bin/bash

sudo echo 'Acquire::HTTP::Proxy "http://192.168.1.10:3142";' >> /etc/apt/apt.conf.d/01proxy
sudo echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

#sudo apt update -y
#sudo apt upgrade -y
