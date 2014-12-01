require "pg"

con = PG.connect(dbname: 'chris_blog', host: 'localhost')

# Create the author table
con.exec("
  CREATE TABLE authors
  (
    id SERIAL4 PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    bio TEXT NOT NULL,
    twitter VARCHAR(250) NOT NULL,
    website VARCHAR(250) NOT NULL,
    google VARCHAR(250) NOT NULL
  );
")

# Create the posts table
con.exec("
  CREATE TABLE posts
  (
    id SERIAL4 PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    published_at DATE DEFAULT NOW(),
    author_id INT4 REFERENCES authors(id)
  );
")

# Seed data
con.exec("
  INSERT INTO posts (title, content, published_at ) VALUES ('first blog', 'content in some blog', '1/2/2014')
")
con.exec("
  INSERT INTO authors (first_name, last_name, bio, twitter, website, google ) VALUES ('Jack', 'Hamblin-Watson', 'Ruby pro', 'twitter', 'website', 'google_plus'), ('Zach', 'Hamblin-Watson', 'PHP pro', 'twitter', 'website', 'google_plus'), ('Mack', 'Hamblin-Watson', 'Groovy pro', 'twitter', 'website', 'google_plus'),
")

con.close