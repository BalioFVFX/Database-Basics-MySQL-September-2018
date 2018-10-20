CREATE TABLE pictures(id INT(11) AUTO_INCREMENT PRIMARY KEY,
path VARCHAR(255) NOT NULL,
size DECIMAL(10,2) NOT NULL);

CREATE TABLE users(id INT(11) AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) NOT NULL UNIQUE,
password VARCHAR(30) NOT NULL,
profile_picture_id INT(11));


CREATE TABLE posts(id INT(11) AUTO_INCREMENT PRIMARY KEY,
caption VARCHAR(255) NOT NULL,
user_id INT(11) NOT NULL,
picture_id INT(11) NOT NULL);

CREATE TABLE comments(id INT(11) AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(255) NOT NULL,
user_id INT(11) NOT NULL,
post_id INT(11) NOT NULL);

CREATE TABLE users_followers(user_id INT(11),
follower_id INT(11));


ALTER TABLE users
ADD CONSTRAINT FK_users_profile_picture_id
FOREIGN KEY (profile_picture_id)
REFERENCES pictures(id);


ALTER TABLE posts
ADD CONSTRAINT FK_posts_user_id
FOREIGN KEY (user_id)
REFERENCES users(id);

ALTER TABLE posts
ADD CONSTRAINT FK_posts_picture_id
FOREIGN KEY (picture_id)
REFERENCES pictures(id);


ALTER TABLE comments
ADD CONSTRAINT FK_comments_user_id
FOREIGN KEY (user_id)
REFERENCES users(id);

ALTER TABLE comments
ADD CONSTRAINT FK_comments_post_id
FOREIGN KEY (post_id)
REFERENCES posts(id);


ALTER TABLE users_followers
ADD CONSTRAINT FK_users_followers_user_id
FOREIGN KEY (user_id)
REFERENCES users(id);

ALTER TABLE users_followers
ADD CONSTRAINT FK_users_followers_follower_id
FOREIGN KEY (follower_id)
REFERENCES users(id);