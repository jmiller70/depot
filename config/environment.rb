# Load the Rails application.
require File.expand_path('../application', __FILE__)
config.action_mailer.delivery_method = :smtp
# Initialize the Rails application.
Depot::Application.initialize!
