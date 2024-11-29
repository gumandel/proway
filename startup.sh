#!/bin/bash
python3 /app/manage.py migrate --noinput
python3 /app/manage.py createsuperuser --noinput 
python3 /app/manage.py runserver 0.0.0.0:8000