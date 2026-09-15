FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN a2enmod rewrite

COPY . /var/www/html/

RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

RUN mkdir -p /var/www/html/application/cache/sessions \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/application/cache

EXPOSE 80