FROM php:8.1.19-fpm-alpine3.18

WORKDIR /app

COPY index.php .

EXPOSE 9000

CMD ["php-fpm"]
