FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade --yes

RUN apt-get install --quiet --yes curl
RUN apt-get install --quiet --yes php5-cli

RUN cd /usr/local/bin/ && curl --silent --remote-name https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar
