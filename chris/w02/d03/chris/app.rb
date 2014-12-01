require "sinatra"
require "sinatra/reloader"
require "pry"

get '/' do
erb :home
end


post '/buy_product' do 

  params[:price]
  params[:qty]

  
end