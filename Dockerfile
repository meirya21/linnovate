FROM php:7.4-fpm

WORKDIR /app

COPY index.php .

EXPOSE 9000

CMD ["php-fpm"]


# COPY default.conf /etc/nginx/sites-available/default
# COPY index.php /var/www/html/
# RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
# RUN echo "cgi.fix_pathinfo=0" >> /etc/php/7.4/fpm/php.ini