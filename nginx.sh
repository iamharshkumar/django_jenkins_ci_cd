#!/bin/bash

sudo apt install nginx -y

sudo cp -rf app.conf /etc/nginx/sites-available/django_ci_cd
# chmod 710 /var/lib/jenkins/workspace/django_ci_cd

sudo ln -s /etc/nginx/sites-available/django_ci_cd /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx