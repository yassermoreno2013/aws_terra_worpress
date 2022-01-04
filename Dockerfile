FROM wordpress:latest
USER root
COPY ./wordpress/wp-content/ /var/www/wordpress/wp-content/
EXPOSE 80