CREATE DATABASE IF NOT EXISTS adlister_db;


GRANT ALL ON adlister_db TO 'adlister'@'localhost';
USE adlister_db;
CREATE TABLE users
(
    user_id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username CHAR(255),
    email    CHAR(255),
    password CHAR(255),
        PRIMARY KEY (user_id)
);
CREATE TABLE ads
(
    ad_id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT unsigned NULL,
    title CHAR(255),
    description    TEXT,
    PRIMARY KEY (ad_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

SHOW tables;
