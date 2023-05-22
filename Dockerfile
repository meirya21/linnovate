FROM ubuntu:20.04

# Install Nginx and PHP-FPM
RUN apt-get update && apt-get install nginx php7.4 php7.4-fpm -y

# Configure Nginx
COPY default.conf /etc/nginx/sites-available/default
COPY index.php /var/www/html/
RUN echo "cgi.fix_pathinfo=0" >> /etc/php/7.4/fpm/php.ini

# Start Nginx and PHP-FPM
CMD service php7.4-fpm start && nginx -g "daemon off;"

# Expose port 80
EXPOSE 80
