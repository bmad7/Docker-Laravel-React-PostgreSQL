FROM php:7.4-fpm-alpine

RUN apk upgrade --no-cache
RUN apk add --no-cache icu-libs libldap libsasl imagemagick-libs libmemcached-libs libzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www
RUN chown -R www-data:www-data /var/www

COPY . .
RUN composer install
EXPOSE 9000
