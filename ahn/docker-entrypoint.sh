#!/bin/sh

# docker_host=`ip route | grep default | awk '{print $3}'`

export AHN_PLATFORM_LOGGING_LEVEL=info
export ADHEARSION_PLATFORM_LOGGING_OUTPUTTERS=""
export AHN_PUNCHBLOCK_PLATFORM=asterisk
export AHN_PUNCHBLOCK_ROOT_DOMAIN=${ASTERISK_HOST}
export AHN_PUNCHBLOCK_HOST=${ASTERISK_HOST}
export AHN_PUNCHBLOCK_PORT=${ASTERISK_PORT}
export AHN_PUNCHBLOCK_USERNAME=${ASTERISK_MANAGER_USERNAME}
export AHN_PUNCHBLOCK_PASSWORD=${ASTERISK_MANAGER_PASSWORD}

#  Adhearsion  3.0.0+
export AHN_PLATFORM_ENVIRONMENT=production
export AHN_PLATFORM_LOGGING_LEVEL=info
export ADHEARSION_PLATFORM_LOGGING_OUTPUTTERS=""
export AHN_CORE_HTTP_ENABLE=true
export AHN_CORE_TYPE=asterisk
export AHN_CORE_ROOT_DOMAIN=${ASTERISK_HOST}
export AHN_CORE_HOST=${ASTERISK_HOST}
export AHN_CORE_PORT=${ASTERISK_PORT}
export AHN_CORE_USERNAME=${ASTERISK_MANAGER_USERNAME}
export AHN_CORE_PASSWORD=${ASTERISK_MANAGER_PASSWORD}


# bundle --local

if [ "$1" = "ahn" ]; then
  exec foreman run -d /ahn -f /ahn/Procfile "$@"
else
  if [ "$1" = "" ]; then
    # This works if CMD is empty or not specified in Dockerfile
    exec foreman run -d /ahn -f /ahn/Procfile ahn
  else
    exec "$@"
  fi
fi

