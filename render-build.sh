#!/bin/bash
set -e

# Install dependencies (if needed, depending on your setup)
bundle install --without development test

# Run database migrations
bundle exec rails db:migrate
