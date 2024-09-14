FROM ruby:3.1.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# # Precompile assets and database setup (optional)
# RUN bundle exec rake assets:precompile
# RUN bundle exec rake assets:clean
# RUN bundle exec rake db:migrate

EXPOSE 3000

# Configure the main process to run when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]
