FROM php:7.2-apache

#RUN wget https://download.owncloud.com/server/stable/owncloud-complete-latest.tar.bz2
#RUN tar -x -f /owncloud-complete-latest.tar.bz2 -C /var/www
#RUN cp -a /var/www/owncloud/. -t /var/www/html
#RUN rm -r /var/www/owncloud
#RUN rm /owncloud-complete-latest.tar.bz2

# Copy data for add-on
COPY files/run.sh /
RUN chmod a+x /run.sh

#CMD [ "/run.sh" ]
