FROM php:7.2-fpm-alpine

# Install composer
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

RUN docker-php-ext-install \
    mbstring \
    ctype \
    pdo_mysql \
    pcntl