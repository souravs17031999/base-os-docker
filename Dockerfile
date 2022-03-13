# syntax=docker/dockerfile:1

FROM python:3.8-alpine

RUN apk add --no-cache python3-dev openssl-dev libffi-dev gcc && pip3 install --upgrade pip
RUN apk add postgresql
RUN export PATH=$PATH:/usr/libexec/postgresql14
RUN export PATH=/usr/libexec/postgresql14:$PATH

RUN \
    apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev linux-headers libpq-dev

RUN python3 -m pip install Flask==2.0.1 Jinja2==3.0.1 psycopg2-binary==2.9.1 psycopg2==2.9.1

CMD [ "/bin/sh" ]