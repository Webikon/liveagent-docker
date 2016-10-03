FROM php:5.6.26-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd mysql mbstring

RUN apt-get update && apt-get install -y cron

COPY liveagent-cron /etc/cron.d/liveagent-cron
RUN crontab /etc/cron.d/liveagent-cron
