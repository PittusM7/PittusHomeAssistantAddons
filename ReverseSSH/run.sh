#!/usr/bin/with-contenv bashio

LOGLEVEL=$(bashio::config 'logLevel')
if [[ "${LOGLEVEL}" == "null" ]]
then
  LOGLEVEL="info"
fi
bashio::log.level ${LOGLEVEL}

bashio::log.info "Starting ReverseSSH..."

# read from config
LOCALHOST=$(bashio::config 'localHost')
REMOTEHOST=$(bashio::config 'remoteHost')
REMOTEUSER=$(bashio::config 'remoteUser')
REMOTEPASSWORD=$(bashio::config 'remotePassword')

bashio::log.debug "config localHost: \"${LOCALHOST}\""
bashio::log.debug "config remoteHost: \"${REMOTEHOST}\""
bashio::log.debug "config remoteUser: \"${REMOTEUSER}\""
bashio::log.debug "config remotePassword: \"*****\""

for portPair in $(bashio::config 'portPairs|keys'); do
  LOCALPORT=$(bashio::config "portPairs[${portPair}].localPort")
  REMOTEPORT=$(bashio::config "portPairs[${portPair}].remotePort")

  bashio::log.debug "config portPair: \"${portPair}\", localPort: \"${LOCALPORT}\", remotePort: \"${REMOTEPORT}\""

  bashio::log.debug "sshpass -p ***** ssh -N -o StrictHostKeyChecking=no -R ${REMOTEPORT}:${LOCALHOST}:${LOCALPORT} ${REMOTEUSER}@${REMOTEHOST} &"
  sshpass -p ${REMOTEPASSWORD} ssh -N -o StrictHostKeyChecking=no -R ${REMOTEPORT}:${LOCALHOST}:${LOCALPORT} ${REMOTEUSER}@${REMOTEHOST} &
  bashio::log.debug "exit code after ssh: \"$?\""
done

bashio::log.info "Started ReverseSSH"

while true; do sleep 1; done
