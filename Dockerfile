FROM php:8.1.19-fpm-alpine3.18

COPY index.php /var/www/html/

EXPOSE 9000

CMD ["php-fpm"]
