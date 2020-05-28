FROM ubuntu:18.04

ADD . /app

WORKDIR /app

EXPOSE 5000

RUN /app/main.sh 150
