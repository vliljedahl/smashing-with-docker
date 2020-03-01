FROM ruby:alpine

RUN apk add --update npm g++ make tzdata

RUN mkdir /app
WORKDIR /app

COPY . .

RUN bundle install
