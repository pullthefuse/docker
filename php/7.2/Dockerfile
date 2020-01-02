FROM php:7.2-fpm-alpine

RUN apk add --update \
         git \
         freetype-dev \
         libjpeg-turbo-dev \
         libpng-dev \
         icu-dev \
         libzip-dev \
         postgresql-dev \
         bash \
     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
     && docker-php-ext-install -j$(nproc) gd exif \
     && docker-php-ext-configure zip --with-libzip \
     && docker-php-ext-install zip opcache pdo pdo_mysql pdo_pgsql

RUN echo 'export PS1="[$(whoami)] $(pwd) > "' >> /root/.bashrc
