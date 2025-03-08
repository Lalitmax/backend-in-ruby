require 'sinatra'
require 'json'

# Registration Route
post '/register' do
  content_type :json
  request.body.rewind
  data = JSON.parse(request.body.read) rescue {}

  name = data["name"]
  email = data["email"]
  password = data["password"]

  # Log user info to the console
  puts "User Registered: #{data}"

  { message: "Registration successful!" }.to_json
end
