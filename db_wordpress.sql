CREATE DATABASE wordpress;
USE wordpress;
CREATE TABLE 'wordpress' (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'name' varchar(150) DEFAULT NULL,
  PRIMARY KEY ('id')
);
CREATE USER 'worpress'@'localhost' IDENTIFIED BY 'password123';
GRANT ALL PRIVILEGES ON *.* TO 'worpress'@'localhost' WITH GRANT OPTION;
