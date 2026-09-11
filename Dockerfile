FROM php:8.1-apache

# Install required system packages and PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite for CodeIgniter
RUN a2enmod rewrite

# Copy NID project into Apache web root
COPY . /var/www/html/

# Allow CodeIgniter .htaccess files to work
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

# Apache listens on port 80
EXPOSE 80
