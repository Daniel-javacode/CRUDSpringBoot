CREATE DATABASE IF NOT EXISTS task231  ;
use task231;
CREATE TABLE user
(
    id int(10) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
)
    COLLATE='utf8_general_ci';
CREATE UNIQUE INDEX user_username_uindex ON user (username);
CREATE TABLE roles
(
    id int(10) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
)
CREATE TABLE user_roles
(
    user_id int(10) NOT NULL ,
    roles_id int(10) NOT NULL
)
use task231;
DROP TABLE user_roles
