#!/bin/bash
/usr/local/nginx/sbin/nginx
#nginx
tail -f /usr/local/nginx/logs/access.log &
tail -f /usr/local/nginx/logs/error.log &
 
wait
