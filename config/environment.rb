# Load the Rails application.
require_relative 'application'

# Load stripe vars from local file
stripe_env = File.join(Rails.root, 'config', 'stripe_env.rb')
load(stripe_env) if File.exists?(stripe_env)

# Initialize the Rails application.
Rails.application.initialize!
