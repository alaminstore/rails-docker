FROM ruby:3.1.5-slim

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# # Precompile assets and database setup (optional)
# RUN bundle exec rake assets:precompile
# RUN bundle exec rake assets:clean
# RUN bundle exec rake db:migrate
USER 1000 #HERE 1000 is the cmd: id -u or id -g
EXPOSE 3000

# Configure the main process to run when the container starts
#CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
# CMD ["bundle","exec","puma","-e","development","-C","config/puma.rb"]
