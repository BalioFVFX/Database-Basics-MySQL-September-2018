CREATE table manufacturers(
manufacturer_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL,
established_on DATE NOT NULL);

CREATE TABLE models(
model_id INT(11) NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL,
manufacturer_id INT(11) NOT NULL,
CONSTRAINT FK_manufacturer_id FOREIGN KEY (manufacturer_id)
REFERENCES manufacturers(manufacturer_id));

INSERT INTO manufacturers(name, established_on) VALUES(
'BMW', '1916-03-01');
INSERT INTO manufacturers(name, established_on) VALUES(
'Tesla', '2003-01-01');
INSERT INTO manufacturers(name, established_on) VALUES(
'Lada', '1966-05-01');

INSERT INTO models(model_id, name, manufacturer_id) VALUES(
101, 'X1', 1);
INSERT INTO models(model_id, name, manufacturer_id) VALUES(
102, 'i6', 1);
INSERT INTO models(model_id, name, manufacturer_id) VALUES(
103, 'Model S', 2);
INSERT INTO models(model_id, name, manufacturer_id) VALUES(
104, 'Model X', 2);
INSERT INTO models(model_id, name, manufacturer_id) VALUES(
105, 'Model 3', 2);
INSERT INTO models(model_id, name, manufacturer_id) VALUES(
106, 'Nova', 3);