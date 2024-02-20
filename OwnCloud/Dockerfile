FROM php:7-apache

RUN curl -O https://download.owncloud.com/server/stable/owncloud-complete-latest.tar.bz2
RUN tar -x -f owncloud-complete-latest.tar.bz2
RUN cp -a /var/www/html/owncloud/. -t /var/www/html
RUN rm -r /var/www/html/owncloud
RUN rm owncloud-complete-latest.tar.bz2

RUN ln -sf /ssl/fullchain.pem /etc/ssl/certs/ssl-cert-snakeoil.pem
RUN ln -sf /ssl/privkey.pem /etc/ssl/private/ssl-cert-snakeoil.key
RUN ln -sf /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf
