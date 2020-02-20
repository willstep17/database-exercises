USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100),
    name  VARCHAR(100),
    release_date INT,
    sales DECIMAL(4, 1),
    genre VARCHAR(200),
    PRIMARY KEY (id)
);