ENV['RACK_ENV'] ||= 'development'

require 'active_record'
require 'yaml'
require 'erb'
require 'sinatra/activerecord/rake'
require './app' # or the path to your main Sinatra application file

# namespace :db do
#   task :load_config do
#     config = YAML.load(ERB.new(File.read('config/database.yml')).result)
#     ActiveRecord::Base.establish_connection(config['development']) # Use 'development' environment
#   end
# end

namespace :db do
  task :load_config do
    config = YAML.load(ERB.new(File.read('config/database.yml')).result)
    ActiveRecord::Base.establish_connection(config['development']) # Use 'development' environment
  end
  
  desc "Run migrations"
  task :migrate => [:load_config] do
    ActiveRecord::MigrationContext.new('db/migrate').migrate
  end
end



# Load ActiveRecord tasks
load 'active_record/railties/databases.rake'

task :load_config do
  config = YAML.load(ERB.new(File.read('config/database.yml')).result)
  puts "Loaded database configuration: #{config['development']}"
  ActiveRecord::Base.establish_connection(config['development'])
end
