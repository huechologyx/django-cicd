#!/bin/bash
sudo cp -rf app.conf /etc/nginx/conf.d/
sudo cp -rf app.conf /etc/nginx/sites-available/app
chmod 710 /var/opt/jenkins/workspace/django-cicd

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled

sudo nginx -t

sudo systemctl start nginx

sudo systemctl enable nginx

echo "Nginx is started succesfully !!"

sudo systemctl status nginx


