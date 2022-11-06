DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

USE movies_db;

CREATE TABELE movies (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL
);

CREATE TABELE reviews (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);