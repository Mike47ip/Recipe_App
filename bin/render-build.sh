#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Load NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Install and use Node.js
nvm install 20
nvm use 20

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
