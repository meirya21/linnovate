FROM php:7.4-fpm

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.php file
COPY index.php /var/www/html/index.php

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx and PHP-FPM
CMD service nginx start && php-fpm
