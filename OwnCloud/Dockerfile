FROM php:7.2-apache

RUN curl -O https://download.owncloud.com/server/stable/owncloud-complete-latest.tar.bz2
RUN tar -x -f owncloud-complete-latest.tar.bz2
RUN cp -a /var/www/html/owncloud/. -t /var/www/html
RUN rm -r /var/www/html/owncloud
RUN rm owncloud-complete-latest.tar.bz2

COPY /ssl/fullchain.pem /etc/ssl/certs/ssl-cert-snakeoil.pem
COPY /ssl/privkey.pem /etc/ssl/private/ssl-cert-snakeoil.key
