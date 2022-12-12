# Django Docker Gunicorn Nginx Deployment

I wrote this repository as an exercise to learn how to deploy Django application on production using Docker Gunicorn and the Nginx server.

`python manage.py runserver` is sufficient for development but not optimized and safe for production.

## Gunicorn

It helps us start run django application for production. It makes it possible to run multiple worker and it rebootes them when they fail automatically. It is optimized for production.

Each Django application comes with a `wsgi.py` file that makes it possible to run it with **gunicorn** server.

> gunicorn does not serve static files, thus, we need to leverage nginx proxy for that.

## Nginx proxy

Nginx has been the favorite web server for millions of use and it is being used in millions of production servers. In this setup it helps us to do two 2 things

1. Serves as **proxy** to gunicorn server at port 8000
2. Serves static files from the docker volume called `static` if the request comes with first URL segment `/static/`

The combination of the gunicorn and nginx makes it possible to run django application in production mode with full assurance of security and production ready optimization.

# TODO

1. Generalize this repository so that other developer can use it for their django app deployments.
