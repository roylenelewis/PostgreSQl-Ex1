--all posts by specific users--
SELECT * FROM posts WHERE user_id = 1;
SELECT * FROM posts WHERE user_id = 2;

--all likes for a specific post--
SELECT * FROM likes WHERE post_id = 2;
SELECT * FROM likes WHERE post_id = 3;

--all comments for a specific post--
SELECT * FROM comments WHERE post_id = 2;
SELECT * FROM comments WHERE post_id = 4;

--most recent posts--
SELECT * FROM posts ORDER BY created_at DESC LIMIT 10;

--most recent post after recent insertion of a new post--
SELECT * FROM posts ORDER BY created_at DESC LIMIT 10;

--count total like a for a post--
SELECT post_id, COUNT(*) AS like_count FROM likes GROUP BY post_id;




