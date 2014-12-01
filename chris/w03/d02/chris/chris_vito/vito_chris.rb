require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :show_name 
end

get '/:name' do
  @name = params[:name]

  erb :show_name
end

get '/names' do #going to inject names
  

  erb :form
end