# vim:set ft=dockerfile:
FROM andrius/alpine-adhearsion:debian-3.0.0rc1

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

# # installing asterisk
# RUN apt-get -yqq update \
# &&  apt-get -yqq --no-install-recommends --no-install-suggests install \
#       asterisk asterisk-config asterisk-core-sounds-en asterisk-core-sounds-en-gsm asterisk-moh-opsound-gsm \
# &&  apt-get clean all \
# &&  rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man* /tmp/* /var/tmp/*

# RUN ln -s /usr/share/asterisk/sounds/en /var/lib/asterisk/sounds/en

# # start asterisk so it creates missing folders and initializes astdb
# RUN asterisk && sleep 5

# installing adhearsion
ADD Gemfile* /ahn/
RUN bundle install --system --retry 5 --jobs 4

ADD docker-entrypoint.sh /docker-entrypoint.sh

# Entrypoint and commandline
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bundle", "exec", "ahn", "start", "."]

