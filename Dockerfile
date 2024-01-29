FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /app
WORKDIR /app
# ADD Gemfile /app/Gemfile
# ADD Gemfile.lock /app/Gemfile.lock
# ADD kasang_engines.gemspec /app/kasang_engines.gemspec
ADD . /app
RUN bundle install
