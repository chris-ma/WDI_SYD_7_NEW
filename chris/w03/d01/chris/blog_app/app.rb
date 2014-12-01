require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql_string)
  connection = PG.connect(dbname: "my_blog", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  return result
end

get '/' do
  @posts = run_sql("SELECT * FROM posts;")

  erb :home
end

get '/posts/new' do
  erb :new_post_form
end

get '/post/:id' do
  post_id = params[:id]
  @post = run_sql("SELECT * FROM posts WHERE id=#{post_id};")

  erb :post

end

get '/delete/:id' do
  post_id = params[:id]
  @post = run_sql("DELETE FROM posts WHERE id=#{post_id};")

  redirect "/"
end

get '/update/:id' do
  @post = run_sql("SELECT * FROM posts WHERE id='#{params[:id]}';")[0]
  erb :update_form
end


put '/update_post' do
  run_sql("
  UPDATE posts SET
  title='#{params[:title]}',
  content='#{params[:content]}',
  author='#{params[:author]}',
  author_website='#{params[:author_website]}'
  WHERE id='#{params[:id]};
  ")

  redirect "/"
end

post '/posts' do
  run_sql("
    INSERT INTO posts
    (title, content, author, author_website)
    VALUES
    (
      '#{params["title"]}',
      '#{params["content"]}',
      '#{params["author"]}',
      '#{params["author_website"]}'    )
  ")

  redirect "/"
end




