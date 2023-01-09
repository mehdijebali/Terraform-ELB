#!/bin/bash
apt-get update
apt-get -y install nginx
MYIP= $(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
#echo 'Hello Team, this is my IP: ${MYIP}' > /var/www/html/index.html