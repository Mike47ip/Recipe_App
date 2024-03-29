#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install dependencies
bundle install

# Precompile assets
bundle exec rails assets:precompile

# Copy credentials if needed
cp config/master.key config/credentials.yml.enc

# Run any other build steps you need...