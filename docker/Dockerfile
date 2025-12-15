# Use official PHP with Apache image
FROM php:8.2-apache

# Enable Apache rewrite module
RUN a2enmod rewrite

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli

# Copy project files to Apache root
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose Apache port
EXPOSE 80
