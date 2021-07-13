FROM ubuntu:latest
ENV ENV TZ=Europe/Paris
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR /usr/app

COPY ./package.json .
COPY ./package-lock.json .

RUN npm install

COPY ./app.js .

CMD nodejs app.js