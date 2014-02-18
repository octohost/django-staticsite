FROM octohost/python-3.3

WORKDIR /srv/www

ADD . /srv/www
RUN pip install -r requirements.txt

EXPOSE 8000

CMD cd staticsite && gunicorn -b 0.0.0.0:8000 -w 3 staticsite.wsgi:application