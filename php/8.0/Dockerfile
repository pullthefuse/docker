FROM php:8.0-fpm-alpine

RUN apk add --update \
         git \
         freetype-dev \
         libjpeg-turbo-dev \
         libpng-dev \
         icu-dev \
         libzip-dev \
         postgresql-dev \
         zip \
         bash \
     && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
     && docker-php-ext-install -j$(nproc) gd exif \
     && docker-php-ext-install opcache pdo pdo_mysql pdo_pgsql

RUN echo 'export PS1="[$(whoami)] $(pwd) > "' >> /root/.bashrc
