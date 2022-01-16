#!/bin/bash

myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo ${myip} >> /var/www/html/index.html