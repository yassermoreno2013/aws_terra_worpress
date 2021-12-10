FROM nginx:stable-perl

WORKDIR '/var/www/html'
#Install php and some resources
RUN ["apt-get","update"]
RUN ["apt-get","install","php7.3","-y"]
RUN ["apt-get","install","php7.3-cgi","-y"]
RUN ["apt-get","install","php7.3-fpm","-y"]
RUN ["apt-get","install","php-mysqlnd"]
RUN ["apt-get","install","php7.3-curl"]
RUN ["apt-get","install","php7.3-dom"]


# RUN apt-get update && apt-get install -y php7.3 \
#     php7.3-cgi \
#     php7.3-fpm \
#     php-mysqlind
# #Configure nginx as owner and group in php7.3-fpm configs
RUN ["sed","-i", "s/listen.owner = www-data/listen.owner = nginx/g", "/etc/php/7.3/fpm/pool.d/www.conf"]
RUN ["sed","-i", "s/listen.group = www-data/listen.group = nginx/g", "/etc/php/7.3/fpm/pool.d/www.conf"]

#Stop php7.3-fpm from running unauthrized scripts
RUN ["sed","-i","s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g", "/etc/php/7.3/fpm/php.ini"]

#Change the upload settings in php.ini
RUN ["sed","-i", "s/upload_max_filesize = 2M/upload_max_filesize = 200M/g","/etc/php/7.3/fpm/php.ini"]
RUN ["sed","-i", "s/post_max_size = 8M/post_max_size = 200M/g","/etc/php/7.3/fpm/php.ini"]
RUN ["sed","-i", "s/max_execution_time = 30/max_execution_time = 600/g","/etc/php/7.3/fpm/php.ini"]



COPY ./docker-entrypoint.sh /docker-entrypoint.sh
#start php7.3-fpm 
# RUN ["service","php7.3-fpm","start"]
# RUN ["service","php7.3-fpm","start"]
# RUN ["service","php7.3-fpm","start"]
# RUN service php7.3-fpm start



