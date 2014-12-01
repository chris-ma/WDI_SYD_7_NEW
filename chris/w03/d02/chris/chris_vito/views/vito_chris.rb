require "sinatra"
require "sinatra/reloader"


get '/:name' do
  @name = params[:name]

  erb :show_name 
end