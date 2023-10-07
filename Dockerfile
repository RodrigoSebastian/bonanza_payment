# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.2.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base

RUN apt-get update -qq \
  && apt-get install -y \
  # Needed for certain gems
  build-essential \
  # Needed for postgres gem
  libpq-dev \
  # Others
  nodejs \
  vim-tiny \   
  # The following are used to trim down the size of the image by removing unneeded data
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf \
  /var/lib/apt \
  /var/lib/dpkg \
  /var/lib/cache \
  /var/lib/log
# Changes localtime to Singapore
RUN cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime
RUN mkdir /rails_docker
WORKDIR /rails_docker
COPY Gemfile /rails_docker/Gemfile
COPY Gemfile.lock /rails_docker/Gemfile.lock
RUN bundle install
ADD . /rails_docker
CMD bash -c "rm -f tmp/pids/server.pid && rails s -p 3000 -b '0.0.0.0'"