FROM php:7-apache

RUN curl -sSLf -o /usr/bin/install-php-extensions https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions
RUN chmod +x /usr/bin/install-php-extensions
RUN install-php-extensions zip intl gd mysqli

RUN curl -O https://download.owncloud.com/server/stable/owncloud-complete-latest.tar.bz2
RUN tar -x -f owncloud-complete-latest.tar.bz2
RUN cp -a /var/www/html/owncloud/. -t /var/www/html
RUN rm -r /var/www/html/owncloud
RUN rm owncloud-complete-latest.tar.bz2

RUN ln -sf /ssl/fullchain.pem /etc/ssl/certs/ssl-cert-snakeoil.pem
RUN ln -sf /ssl/privkey.pem /etc/ssl/private/ssl-cert-snakeoil.key

RUN a2ensite default-ssl
RUN a2enmod ssl rewrite mime unique_id
