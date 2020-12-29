FROM pullthefuse/php:8.0-fpm-alpine

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
