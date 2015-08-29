#!/bin/bash
rm -rf /var/FlaskApp
yum install -y python-pip
yum install -y nginx
pip install gunicorn flask




