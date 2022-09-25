SHOW DATABASES;
CREATE DATABASE test_db;
USE test_db;
CREATE TABLE app(id INT);
INSERT INTO app(id) VALUES(1234);
INSERT INTO app(id) VALUES(3134);
INSERT INTO app(id) VALUES(4234);
INSERT INTO app(id) VALUES(5434);
SELECT * FROM app;
DROP DATABASE test_db;


CREATE DATABASE books;
USE books;
CREATE TABLE details(book_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(100),
author_fname VARCHAR(50),
author_lname VARCHAR(50),
released_year INT,
stock_quantity INT,
pages INT,
PRIMARY KEY (book_id));
DROP TABLE details;
SELECT * FROM details;
DESC details;
INSERT INTO details(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343)
;
SELECT * FROM details;
SELECT 
    *
FROM
    details
WHERE
    author_fname = 'Neil';
    
SELECT 
    *
FROM
    details
WHERE
    released_year=2003;
    
SELECT 
    *
FROM
    details
WHERE
    (released_year >2003);

# LIKE :
SELECT 
    *
FROM
    details
WHERE
    author_lname LIKE '%La%';