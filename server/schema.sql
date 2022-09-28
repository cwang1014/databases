CREATE DATABASE IF NOT EXISTS chat;

USE chat;

CREATE TABLE IF NOT EXISTS messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT,
  users_id varchar(20) NOT NULL,
  rooms_id varchar(20),
  messageText varchar(255) NOT NULL,
  createdAt varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE IF NOT EXISTS users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS rooms (
  id int NOT NULL AUTO_INCREMENT,
  roomname varchar(20),
  PRIMARY KEY (id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

