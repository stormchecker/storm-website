# Use a slim Ruby image as the base
FROM ruby:3.4-slim

# Set environment variables for UTF-8 encoding and non-interactive package installation
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

# Install essential build tools and dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl

WORKDIR /usr/src/app

# Copy directory into Docker container
COPY . .

# Install project dependencies
RUN bundle install

# Expose port 4000
EXPOSE 4000

# Start the Jekyll development server with live reloading
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]
