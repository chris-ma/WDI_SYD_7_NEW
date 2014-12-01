require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'chris_blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end


get '/' do
  @posts = run_sql("
  SELECT posts.title, posts.content, posts.published_at, posts.id,
  authors.first_name AS author_first_name,
  authors.last_name AS author_last_name,
  authors.website AS author_website,
  authors.twitter AS author_twitter,
  authors.google AS author_google,
  authors.bio AS author_bio
  FROM posts
  LEFT OUTER JOIN authors
  ON posts.author_id = authors.id;
")

  erb :home
end

get '/posts/:id' do
  @post = run_sql("SELECT * FROM posts WHERE id='#{params[:id]}';")[0]
  @authors = run_sql("SELECT id, first_name, last_name FROM authors;")[0]

  erb :post_read
  end

get '/posts/new' do
  @authors = run_sql("SELECT id, first_name, last_name FROM authors;")

  erb :new_post
end


get '/posts/:id/edit' do
  @post = run_sql("SELECT * FROM posts WHERE id='#{params[:id]}';")[0]
  @authors = run_sql("SELECT id, first_name, last_name FROM authors;")

  erb :edit_post
end

put '/posts/:id' do
  run_sql("UPDATE posts SET
  title='#{params[:title]}',
  content='#{params[:content]}',
  author_id='#{params[:author_id]}'
  WHERE id=#{params[:id]};")

#if time change to last date edited
  redirect '/'
end

post '/posts' do
  run_sql("
  INSERT INTO posts
  (title, content, author_id)
  VALUES
  ('#{params[:title]}', '#{params[:content]}', '#{params[:author_id]}');
")

  redirect '/'
end

delete '/posts/:id' do
  run_sql("
DELETE FROM posts WHERE id='#{params[:id]}';
")

  redirect '/'
end

get '/authors' do
  @authors = run_sql("SELECT * FROM authors;")

  erb :authors
end

get '/authors/new' do
  erb :new_author
end

post '/authors' do
  run_sql("
  INSERT INTO authors
  (first_name, last_name, website, twitter, google, bio)
  VALUES
  ('#{params[:first_name]}', '#{params[:last_name]}', '#{params[:website]}', '#{params[:twitter]}', '#{params[:google]}', '#{params[:bio]}');
")

  redirect '/authors'
end

get '/authors/:id/edit' do
  @author = run_sql("SELECT * FROM authors WHERE id=#{params[:id]};")[0]

  erb :edit_author
end

delete '/authors/:id' do
  run_sql("
DELETE FROM authors WHERE id='#{params[:id]}';
")

  redirect '/authors'
end

put '/authors/:id' do
  run_sql("UPDATE authors SET
  first_name='#{params[:first_name]}',
  last_name='#{params[:last_name]}',
  website='#{params[:website]}',
  twitter='#{params[:twitter]}',
  google='#{params[:google]}',
  bio='#{params[:bio]}'
  WHERE id=#{params[:id]};")

  redirect '/authors'
end
