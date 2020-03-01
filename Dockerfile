FROM ruby:2.5

RUN apt update && apt install nodejs -y
RUN mkdir /app
WORKDIR /app

COPY . .

RUN bundle install
