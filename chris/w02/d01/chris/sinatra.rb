require "sinatra"
require "sinatra/reloader"

get '/users' do
"You sign up with the email address:"
"#{params[:email]}" +
"and password: #{params :password}"
end

get '/posts/:id/:slug' do
  "load #{params[:id]} and slug #{params[:slug]}"
end

post '/blog_post' do
  @title = params[:title].upcase
  @content = params[:content]
erb :blog_post, layout: :page
end


post '/blog' do
  "Add your new blog"
  "#{params[:blog]}" +
  "author name: #{params[:author]}<br>" +
  "date: #{params[:date]}"
end

get '/' do
  "Welcome home"
end

get "/search/:search/:sort" do
"Searching for:#{params[:search]}#{params[:sort]}"
end

#GET /hello/chris


get "/hello/:name" do 
  "<h1>Hello #{params[:name]} </h1>"
end

get "/screencasts" do
  "<i>This is the screencast</i>"
end