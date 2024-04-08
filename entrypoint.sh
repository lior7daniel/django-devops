#!/bin/bash
APP_PORT=${PORT:-8000}
cd /code/

## Collect static files
#/opt/venv/bin/python manage.py collectstatic --noinput

# Start the Gunicorn server
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm proj.wsgi:application --bind "0.0.0.0:${APP_PORT}"
