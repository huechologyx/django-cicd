#!/bin/bash

source env/bin/activate

cd /var/opt/jenkins/workspace/django-cicd/app/

python3 manage.py makemigrations
python3 migrate

echo "Migrations has been completed successfully !!"


cd /var/opt/jenkins/workspace/django-cicd/

sudo cp -rf gunicorn.socket /etc/systemd/system
sudo cp -rf gunicorn.service /etc/systemd/system

echo "$USER"
echo "$PWD"


sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "Gunicorn is started successfully !!"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn


