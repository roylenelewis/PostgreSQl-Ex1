 CREATE TABLE users (
       user_id SERIAL PRIMARY KEY,
       username VARCHAR(50) UNIQUE NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       password_hash VARCHAR(255) NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );

CREATE TABLE posts (
       post_id SERIAL PRIMARY KEY,
       user_id INT REFERENCES users(user_id),
       content TEXT NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   
 CREATE TABLE likes (
       like_id SERIAL PRIMARY KEY,
       user_id INT REFERENCES users(user_id),
       post_id INT REFERENCES posts(post_id),
       liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       UNIQUE (user_id, post_id) -- Prevent duplicate likes
   );
   
  CREATE TABLE comments (
       comment_id SERIAL PRIMARY KEY,
       post_id INT REFERENCES posts(post_id),
       user_id INT REFERENCES users(user_id),
       content TEXT NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );



