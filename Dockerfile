FROM python:3.9.0

WORKDIR /home/

RUN echo "test55"

RUN git clone https://github.com/inkkim/django-Pinterest.git

WORKDIR /home/django-Pinterest

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings.deploy", "python manage.py migrate --settings=Pinterest.settings.deploy && gunicorn Pinterest.wsgi --env DJANGO_SETTINGS_MODULE=Pinterest.settings.deploy --bind 0.0.0.0:8000"]