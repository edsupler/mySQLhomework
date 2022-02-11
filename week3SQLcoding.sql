CREATE DATABASE IF NOT EXISTS week3hw;

USE week3hw;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS user;

CREATE TABLE user (
	user_id INT NOT NULL AUTO_INCREMENT,
    	username VARCHAR (20) NOT NULL,
	email VARCHAR(60) NOT NULL,
	password VARCHAR (20) NOT NULL,
	city VARCHAR (20),
   	state VARCHAR (2),
	zip VARCHAR(5),
	
   	PRIMARY KEY (user_id)
);

CREATE TABLE posts (
	post_id INT NOT NULL AUTO_INCREMENT,
	user_id INT,
	post_body TINYTEXT NOT NULL,
    	timestamp DATETIME NOT NULL,
    
   	PRIMARY KEY(post_id),
	FOREIGN KEY(user_id) REFERENCES user(user_id)
);

CREATE TABLE comments (
	comment_id INT NOT NULL AUTO_INCREMENT,
    	comment_body TINYTEXT NOT NULL,
    	timestamp DATETIME NOT NULL,
    	post_id INT,
    	user_id INT,
    
	PRIMARY KEY(comment_id),
    	FOREIGN KEY(post_id) REFERENCES posts(post_id),
    	FOREIGN KEY(user_id) REFERENCES user(user_id)
);
