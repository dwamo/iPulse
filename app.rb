require 'sinatra'
require 'active_record'
require 'dotenv/load'

# Load the database configuration from database.yml using YAML
db_config = YAML.load_file('config/database.yml')[ENV['RACK_ENV'] || 'development']

# Configure ActiveRecord with the loaded database configuration
ActiveRecord::Base.establish_connection(db_config)


# Load models and controllers
Dir["./models/*.rb"].each { |file| require file }
Dir["./controllers/*.rb"].each { |file| require file }

# Define routes
get '/regions' do
  # Fetch all regions and display them
end

get '/' do
  "Hello World"
end
# Add routes for cities, suburbs, and contacts (CRUD operations)
# ...

# Add routes for creating, updating, deleting records
# ...
