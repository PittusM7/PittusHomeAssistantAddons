#!/usr/bin/with-contenv bashio

LOGLEVEL=$(bashio::config 'logLevel')
if [[ "${LOGLEVEL}" == "null" ]]
then
  LOGLEVEL="info"
fi
bashio::log.level ${LOGLEVEL}

bashio::log.info "Starting OwnCloud..."


bashio::log.info "Started OwnCloud"

while true; do sleep 1; done
