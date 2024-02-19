ARG BUILD_FROM
FROM $BUILD_FROM

# setup
RUN apk update
RUN apk add apache2
RUN apk add php
#RUN apk add libapache2-mod-php
#RUN apk add php-mysql
#RUN apk add php-intl
#RUN apk add php-curl
#RUN apk add php-json
#RUN apk add php-gd
#RUN apk add php-xml
#RUN apk add php-mbstring
#RUN apk add php-zip

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
