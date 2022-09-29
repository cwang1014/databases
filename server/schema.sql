DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT,
  user_id int,
  roomname varchar(20),
  messageText varchar(255) NOT NULL,
  createdAt varchar(50) NOT NULL,
  PRIMARY KEY (id)
  -- FOREIGN KEY (user_id) REFERENCES users(id)
);

/* Create other tables and define schemas for them here! */

-- CREATE TABLE rooms (
--   id int NOT NULL AUTO_INCREMENT,
--   roomname varchar(20),
--   PRIMARY KEY (id)
-- );



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

