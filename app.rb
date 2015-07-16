require "pry"
require "active_record"
require "sqlite3"
require "sinatra"
require "sinatra/reloader"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'your_database.db')

# So that ActiveRecord explains the SQL it's running in the logs.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

# Models
require_relative "models/album.rb"
require_relative "models/photograph.rb"
require_relative "models/photographer.rb"


require_relative "controllers/main_controller.rb"




require_relative 'database_setup.rb'




#Photograph has many Albums
#Album has many Photographs
#Photographer has many Photos