FROM php:7.4-fpm

RUN apt-get update && apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY index.html /var/www/html/index.html

EXPOSE 8888

CMD service nginx start && php-fpm