USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR(255),
    name CHAR(255),
    release_date INT,
    sales FLOAT,
    genre CHAR(255),
    PRIMARY KEY (id)
);