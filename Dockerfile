FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim

ENV APP_PATH /api
ARG RUBYGEMS_VERSION=3.3.20

RUN mkdir $APP_PATH
WORKDIR $APP_PATH
COPY Gemfile $APP_PATH/Gemfile
COPY Gemfile.lock $APP_PATH/Gemfile.lock
RUN gem update --system ${RUBYGEMS_VERSION} && bundle install

COPY . $APP_PATH
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000
CMD ["rails" "server" "-b" "0.0.0.0"]
