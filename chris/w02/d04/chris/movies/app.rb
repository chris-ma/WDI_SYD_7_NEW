require "sinatra"
require "sinatra/reloader"
require "httparty"


#has the user sent something in

search_term_query = ""


get '/' do
  #  if params[:movie_title]
  #   search_term = params[:movie_title].gsub(" ", "+")   
  #   response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
  #   @movie = JSON(response)
  #   end
  erb :home

end

get '/search' do
   # if params[:search]

    search_term = params[:search].gsub(" ", "+")   
    search_term_query = search_term
    response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
    @movies = JSON(response)["Search"] #grab array out of hash
    # @smovies.to_s
    


  erb :home

end

# get "/movies/:id" do
#     if params[:id] #'If' movie title exists, do the next thing
#     search_term = params[:id]
#     response = HTTParty.get("http://www.omdbapi.com/?i=#{search_term}&tomatoes=true")
#     @movie = JSON(response) 
#     @movie_name = JSON(response)["Title"]
#     title_response = HTTParty.get("http://www.omdbapi.com/?s=#{@movie_name}")
#     @movie_list = JSON(title_response)["Search"]
#   end
#   erb :movies, layout: :layout
# end


get '/movie/:imdb_id' do
    movie_id = params[:imdb_id]  
    response = HTTParty.get("http://www.omdbapi.com/?i=#{movie_id}&tomatoes=true")
    @movie = JSON(response)
    #calling the same search results as /search
    movie_title = @movie["Title"].gsub(" ", "+")   
    suggestions = HTTParty.get("http://www.omdbapi.com/?s=#{movie_title}")
    @movies_search = JSON(suggestions)["Search"]
#     #I'm feeling easy


  erb :movie

end

# get '/easy' do
#    if params[:easy]
#     search_term = params[:easy].gsub(" ", "+")   
#     response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
#     @movies = JSON(response)[1] #grab array out of hash
#     @smovies.to_s
#     end


#   erb :home

# end
