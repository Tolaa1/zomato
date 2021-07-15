# set base image
FROM ruby:2.6.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# set the working directory in the container
WORKDIR /usr/src/zomato
#copy the dependencies file to the working directory
COPY Gemfile Gemfile.lock ./
# install all the dependencies 
RUN bundle install
# copy the depencies file 
COPY . .
EXPOSE 3000
# Configure the main process to run on container start
CMD ["rails", "server", "-b", "0.0.0.0"] 