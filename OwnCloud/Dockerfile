ARG BUILD_FROM
FROM $BUILD_FROM

# setup
RUN apk add apache2 php libapache2-mod-php php-mysql php-intl php-curl php-json php-gd php-xml php-mbstring php-zip

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
