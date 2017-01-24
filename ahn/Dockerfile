# vim:set ft=dockerfile:
FROM andrius/alpine-adhearsion:debian-3.0.0rc1

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

# installing adhearsion
ADD Gemfile* /ahn/
RUN bundle install --system --retry 5 --jobs 4

ADD docker-entrypoint.sh /docker-entrypoint.sh

# Entrypoint and commandline
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bundle", "exec", "ahn", "start", "."]

