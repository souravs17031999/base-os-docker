# syntax=docker/dockerfile:1

FROM python:3.8-alpine

RUN apk add --no-cache python3-dev openssl-dev libffi-dev gcc && pip3 install --upgrade pip
RUN apk add postgresql
RUN \
    apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
    python3 -m pip install -r requirements.txt --no-cache-dir && \
    apk --purge del .build-deps

CMD [ "/bin/bash" ]