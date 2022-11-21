#!/bin/bash
yum update
amazon-linux-extras enable nginx1
yum clean metadata
yum install -y net-tools nginx
systemctl start nginx
systemctl enable nginx
MYIP=`ifconfig | grep -E '(inet 10)|(addr:10)' | awk '{ print $2 }' | cut -d ':' -f2`
echo 'Hello Team, this is my IP: '$MYIP > /var/www/html/index.html