FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /dailyjournal
WORKDIR /dailyjournal
COPY Gemfile /dailyjournal/Gemfile
COPY Gemfile.lock /dailyjournal/Gemfile.lock
RUN bundle install
COPY . /dailyjournal
