FROM ruby:2.7

RUN apt update && apt install build-essential nodejs -y

RUN mkdir /app
WORKDIR /app

COPY . .

RUN bundle install
