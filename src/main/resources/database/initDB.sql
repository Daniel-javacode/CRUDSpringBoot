CREATE DATABASE IF NOT EXISTS task231  ;
use task231;
CREATE TABLE user
(
    id int(10) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(100) NOT NULL
)
    COLLATE='utf8_general_ci';
CREATE UNIQUE INDEX user_first_name_uindex ON user (first_name);