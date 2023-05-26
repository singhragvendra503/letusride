# Dockerfile

FROM ruby:3.2.1

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5

# Copy the entire project directory into the container
COPY . .

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
