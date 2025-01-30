#! /bin/bash
MYIP=`ifconfig | grep -E '(inet 10)|(addr:10)' | awk '{ print $2 }' | cut -d ':' -f2`
echo 'Hello Team, this is my IP:' $MYIP > /usr/share/nginx/html/index.html