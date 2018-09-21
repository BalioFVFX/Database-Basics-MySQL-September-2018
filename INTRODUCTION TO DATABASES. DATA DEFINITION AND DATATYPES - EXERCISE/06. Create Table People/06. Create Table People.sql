CREATE TABLE people(id INT(11) NOT NULL AUTO_INCREMENT, name VARCHAR(200) NOT NULL, picture MEDIUMBLOB,
height DECIMAL(2), weight DECIMAL(2), gender char(1) NOT NULL, birthdate DATETIME NOT NULL, biography LONGTEXT, PRIMARY KEY(id));

INSERT INTO people(name, gender, birthdate) values ('Pesho', 'M', '2017/9/21');
INSERT INTO people(name, gender, birthdate) values ('Gosho', 'M', '2017/9/21');
INSERT INTO people(name, gender, birthdate) values ('Tosho', 'M', '2017/9/21');
INSERT INTO people(name, gender, birthdate) values ('Pesho2', 'M', '2017/9/21');
INSERT INTO people(name, gender, birthdate) values ('Gosho2', 'M', '2017/9/21');