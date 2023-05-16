FROM php:7.4-fpm

RUN apt-get update && apt-get install -y nginx

COPY ./nginx /etc/nginx/nginx.conf

COPY ./index.php /var/www/html/index.php

EXPOSE 80

CMD service nginx start && php-fpm