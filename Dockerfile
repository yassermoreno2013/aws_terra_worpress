FROM wordpress:latest
USER root
WORKDIR /efs/wordpress/wp-content/
COPY ./ /var/www/html/wordpress/wp-content/
EXPOSE 80