#!/bin/bash

# Update packages
sudo yum update -y

# Install nginx
sudo amazon-linux-extras enable nginx1
sudo yum clean metadata
sudo yum -y install nginx
sudo systemctl enable nginx

# Install net-tools
sudo yum -y install net-tools.x86_64
