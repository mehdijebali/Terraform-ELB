#!/bin/bash
apt-get update
apt-get -y install nginx net-tools
MYIP=`ifconfig | grep -E '(inet 10)|(addr:10)' | awk '{ print $2 }' | cut -d ':' -f2`
echo 'Hello Team, this is my IP:' $MYIP > /var/www/html/index.html