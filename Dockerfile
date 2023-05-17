FROM php:7.4-fpm

RUN apt-get update && apt-get install -y nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./mime.types /etc/nginx/mime.types

COPY ./index.php /var/www/html/index.php

EXPOSE 80

CMD ["nginx", "-g", "daemon off", "&&", "php-fpm"]