#!/bin/bash
sudo cp -rf app.conf /etc/nginx/conf.d
chmod 710 /var/opt/jenkins/workspace/django-cicd

sudo nginx -t

sudo systemctl start nginx

sudo systemctl enable nginx

echo "Nginx is started succesfully !!"

sudo systemctl status nginx


