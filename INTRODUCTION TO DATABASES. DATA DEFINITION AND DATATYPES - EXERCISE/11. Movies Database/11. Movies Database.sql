CREATE TABLE directors(id INT(11) NOT NULL AUTO_INCREMENT, director_name VARCHAR(255) NOT NULL, notes LONGTEXT, PRIMARY KEY(id));
CREATE TABLE genres(id INT(11) NOT NULL AUTO_INCREMENT, genre_name VARCHAR(255) NOT NULL, notes LONGTEXT, PRIMARY KEY(id));
CREATE TABLE categories(id INT(11) NOT NULL AUTO_INCREMENT, category_name VARCHAR(255) NOT NULL, notes LONGTEXT, PRIMARY KEY(id));
CREATE TABLE movies(id INT(11) NOT NULL AUTO_INCREMENT, title VARCHAR(255) NOT NULL, director_id INT(11) NOT NULL, copyright_year YEAR NOT NULL, length INT(11) NOT NULL, genre_id INT(11) NOT NULL, category_id INT(11) NOT NULL, rating DECIMAL(11), notes LONGTEXT, PRIMARY KEY(id));

INSERT INTO directors(director_name) values('Pesho');
INSERT INTO directors(director_name) values('Pesho');
INSERT INTO directors(director_name) values('Pesho');
INSERT INTO directors(director_name) values('Pesho');
INSERT INTO directors(director_name) values('Pesho');

INSERT INTO genres(genre_name) values('Comedy');
INSERT INTO genres(genre_name) values('Comedy');
INSERT INTO genres(genre_name) values('Comedy');
INSERT INTO genres(genre_name) values('Comedy');
INSERT INTO genres(genre_name) values('Comedy');

INSERT INTO categories(category_name) values('Category');
INSERT INTO categories(category_name) values('Category');
INSERT INTO categories(category_name) values('Category');
INSERT INTO categories(category_name) values('Category');
INSERT INTO categories(category_name) values('Category');

INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id) values ('Title', 1, '2018', 4, 1, 1);
INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id) values ('Title', 1, '2018', 4, 1, 1);
INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id) values ('Title', 1, '2018', 4, 1, 1);
INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id) values ('Title', 1, '2018', 4, 1, 1);
INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id) values ('Title', 1, '2018', 4, 1, 1);