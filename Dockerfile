FROM php:7.1.18-apache

RUN apt-get update
RUN apt-get -y install vim wget unzip libicu-dev
RUN docker-php-ext-install pdo_mysql mysqli intl
RUN apt-get clean
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
