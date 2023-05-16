FROM php:7.4-fpm

RUN apt-get update && apt-get install -y nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./index.php /var/www/html/index.php

EXPOSE 8888

CMD ["nginx", "-g", "daemon off;"]