FROM python:3.7-alpine
MAINTAINER Aaron Shakibpanah
ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
