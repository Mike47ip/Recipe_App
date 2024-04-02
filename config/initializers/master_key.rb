#config/master.key

# Load the master key from the RAILS_MASTER_KEY environment variable
key = ENV['RAILS_MASTER_KEY']

if key.present?
  # Set the master key
  Rails.application.credentials.secret_key_base = key
else
  # Log an error if the environment variable is not set
  puts "Missing RAILS_MASTER_KEY environment variable"
end