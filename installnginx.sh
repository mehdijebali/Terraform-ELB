#!/bin/bash
apt-get update
apt-get -y install nginx 
echo 'Hello Team, this is my random number:' $$ > /var/www/html/index.html