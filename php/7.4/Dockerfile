FROM php:7.4-fpm-alpine

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
     && docker-php-ext-configure zip --with-libzip \
     && docker-php-ext-install opcache pdo pdo_mysql pdo_pgsql \
     && pecl install mongodb

RUN echo 'export PS1="[$(whoami)] $(pwd) > "' >> /root/.bashrc
