FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sam_mgt
WORKDIR /sam_mgt
COPY Gemfile /sam_mgt/Gemfile
COPY Gemfile.lock /sam_mgt/Gemfile.lock
RUN bundle install
COPY . /sam_mgt
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]


# EXPOSE 3000
# # EXPOSE 80

# # Start the main process
# CMD ["rails", "server", "-b", "0.0.0.0"]
