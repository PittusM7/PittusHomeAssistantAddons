ARG BUILD_FROM
FROM $BUILD_FROM

# setup
RUN apk update
RUN apk add apache2
RUN apk add php
RUN apk add php-apache2
RUN apk add php-intl
RUN apk add php-curl
RUN apk add php-json
RUN apk add php-gd
RUN apk add php-xml
RUN apk add php-mbstring
RUN apk add php-zip
RUN apk add php-mysqli
RUN apk add php-pdo_mysql
##RUN apk add libapache2-mod-php
#RUN apk add curl
#RUN apk add gnupg

RUN wget https://download.owncloud.com/server/stable/owncloud-complete-latest.tar.bz2
RUN tar -x -f /owncloud-complete-latest.tar.bz2 -C /var/www
RUN rm /owncloud-complete-latest.tar.bz2
COPY files/owncloud.conf /etc/apache2/sites-available/


# Copy data for add-on
COPY files/run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
