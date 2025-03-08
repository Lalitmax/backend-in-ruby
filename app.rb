require 'sinatra'
require_relative 'controllers/register_controller'  # Load the controller

# Home route
get '/' do
  content_type :json
  { message: "Sinatra API is running!" }.to_json
end
