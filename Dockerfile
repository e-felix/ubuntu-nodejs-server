FROM ubuntu:bionic

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ARG appfolder

RUN apt-get update
RUN apt-get install -y sudo wget curl git nano

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN apt-get dist-upgrade -y

EXPOSE 3000

COPY . /var/www/

WORKDIR /var/www/$appfolder

RUN npm install

CMD npm start