#!/bin/bash

#generate ssl key
openssl req -sha256 -nodes -new -x509 -newkey rsa:4096 -keyout /etc/nginx/www.key -out /etc/nginx/www.crt -subj "/C=GB/L=Birmingham/O=Julusian.co.uk/CN=$HOSTNAME"

sed -i 's,$ENV{"REDIRECT_URL"},'$REDIRECT_URL',g' /etc/nginx/conf.d/default.conf

#run nginx
nginx -g "daemon off;"