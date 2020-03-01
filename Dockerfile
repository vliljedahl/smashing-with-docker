FROM ruby:alpine

RUN apk add --update npm g++ make tzdata

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

ENV app /app
RUN mkdir $app
WORKDIR $app
ADD . $app
