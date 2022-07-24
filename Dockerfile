FROM python:3.7-slim

MAINTAINER Sergey Kupriyanov

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
RUN chmod 777 /app
COPY ./app /app