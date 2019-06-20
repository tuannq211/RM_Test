FROM ruby:2.6.1
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /RM_Test
WORKDIR /RM_Test
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN gem install bundler --version="2.0.1"
RUN bundle install
ADD . /RM_Test