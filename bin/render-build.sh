#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs

# Install bundler if it's not already installed
gem install bundler

# Install Ruby gems
bundle install

# Install JavaScript dependencies
yarn install

# Run database migrations
bundle exec rails db:migrate

# Precompile assets
bundle exec rails assets:precompile

# Clean assets
bundle exec rails assets:clean
