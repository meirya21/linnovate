FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./index.php /var/www/html/index.php