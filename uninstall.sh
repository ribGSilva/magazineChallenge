#!/bin/bash

echo "Revoming Angular client container..."

sudo docker rm -f clinetserver

sudo docker rmi -f webclient:0.1

echo "Revoming JAVA server container..."

sudo docker rm -f javaserver

sudo docker rmi -f webserver:0.1

echo "Returning to old proxying..."

sudo cp /etc/nginx/nginx.conf.old /etc/nginx/nginx.conf

sudo rm /etc/nginx/nginx.conf.old

sudo nginx -s reload

echo "Done!"

