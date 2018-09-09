FROM ruby:2.5.1

RUN apt-get update && apt-get install -y postgresql-client nodejs build-essential

WORKDIR /app

#copy source code to the image
COPY . .
RUN bundle install

#specify commands to run when container based on this image starts
CMD rails server
