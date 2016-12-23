# vim:set ft=dockerfile:
FROM andrius/alpine-adhearsion:3.0.0rc1

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN echo "Installing necessary pagkages and libs" \
&&  apk-install git bash

RUN echo "Installing *-dev packages and dependences" \
&&  apk-install ruby-dev build-base libxml2-dev libxslt-dev pcre-dev libffi-dev

WORKDIR /ahn
RUN echo "Don't forget to mount at docker startup the project folder to the /ahn folder" > README.md

# Gemfile and Gemfile.lock should be copied to install same git version of adhearsion as specified in Docker image
RUN cp -R /app/Gemfile      /ahn/ \
&&  cp -R /app/Gemfile.lock /ahn/ \
&&  bundle install --system --retry 5 --jobs 4 --quiet

# Copyng Gemfile, it's good to save Gemfile.lock from Docker image to project folder, once docker build
ADD Gemfile      /ahn/
ADD Gemfile.lock /ahn/

RUN bundle install --system --retry 5 --jobs 4 --quiet

ADD docker-entrypoint.sh /docker-entrypoint.sh

# Entrypoint and commandline
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/ahn/start.sh"]

