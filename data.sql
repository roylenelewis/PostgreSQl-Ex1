--insert data in to users--
INSERT INTO users (username, email, password_hash) VALUES
('Vijay', 'vijay@abc.com', 'hashed_password_1'),
('Riya', 'riya@abc.com', 'hashed_password_2'),
('Sinimol', 'sinimol@abc.com', 'hashed_password_3'),
('Shivam', 'shivam@abc.com', 'hashed_password_4');

--insert data into posts--
INSERT INTO posts (user_id, content) VALUES
(1, 'Hello, this is my first post!'),
(2, 'Enjoying a beautiful day.'),
(3, 'Enjoying the sunrise!!!');

--insert data into likes--
INSERT INTO likes (user_id, post_id) VALUES
(4, 1),  
(2, 3),
(3,2); 

--insert data into comments--
INSERT INTO comments (post_id, user_id, content) VALUES
(2, 3, 'Great post !!!'),
(3, 2, 'Lovely !');

--insert a post after ceratin time interval--
INSERT INTO posts (user_id, content) VALUES
(4, 'Vacation at the Maldives..');




