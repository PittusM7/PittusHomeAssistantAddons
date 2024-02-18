ARG BUILD_FROM
FROM $BUILD_FROM

# setup
RUN apk add openssh sshpass

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
