CREATE TABLE passports(
passport_id INT(11) NOT NULL UNIQUE,
passport_number VARCHAR(50) NOT NULL);

CREATE TABLE persons(
person_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
first_name VARCHAR(50) NOT NULL,
salary DECIMAL(11,2) NOT NULL,
passport_id INT(11) NOT NULL UNIQUE);

ALTER TABLE persons
ADD CONSTRAINT PK_person_id PRIMARY KEY (person_id);

ALTER TABLE persons
ADD CONSTRAINT FK_passport_id FOREIGN KEY (passport_id)
REFERENCES passports(passport_id);

INSERT INTO passports(passport_id, passport_number) VALUES (101, 'N34FG21B');
INSERT INTO passports(passport_id, passport_number) VALUES (102, 'K65LO4R7');
INSERT INTO passports(passport_id, passport_number) VALUES (103, 'ZE657QP2');

INSERT INTO persons (first_name, salary, passport_id) VALUES ('Roberto', 43300.00, 102);
INSERT INTO persons (first_name, salary, passport_id) VALUES ('Tom', 56100.00, 103);
INSERT INTO persons (first_name, salary, passport_id) VALUES ('Yana', 60200.00, 101);
