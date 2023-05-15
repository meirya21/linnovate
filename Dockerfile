# Use the official PHP-FPM base image
FROM php:7.4-fpm

# Install Nginx and other required packages
RUN apt-get update && apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/nginx.conf

# Copy a custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the index.php file to the web root directory
COPY index.php /var/www/html/index.php

# Expose port 80 for Nginx
EXPOSE 80

# Start both Nginx and PHP-FPM
CMD service nginx start && php-fpm
