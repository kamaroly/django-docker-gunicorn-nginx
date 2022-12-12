#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input # Collect all the static files inside the volume in django

gunicorn starter.wsgi:application --bind 0.0.0.0:8000
