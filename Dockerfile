FROM ruby:2.5.1

RUN apt-get update && apt-get install -y postgresql-client nodejs build-essential

WORKDIR /app

COPY Gemfile* ./
RUN bundle install
#copy source code to the image
COPY . .

#specify commands to run when container based on this image starts
CMD ["rails", "server", "-b", "0.0.0.0"]
