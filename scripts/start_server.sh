#!/bin/bash
cd /var/FlaskApp
/usr/local/bin/gunicorn wsgi:app --bind 0.0.0.0:8080 --daemon -p /tmp/flaskApp.pid
cp /var/FlaskApp/nginx/flaskApp.conf /etc/nginx/conf.d/
service nginx restart


