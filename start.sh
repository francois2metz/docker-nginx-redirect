#!/bin/sh

sed -i 's,$ENV{"REDIRECT_URL"},'$REDIRECT_URL',g' /etc/nginx/conf.d/default.conf

# run nginx
nginx -g "daemon off;"
