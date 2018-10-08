CREATE TABLE students(
student_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
student_number VARCHAR(12) NOT NULL,
student_name VARCHAR(50) NOT NULL,
major_id INT(11) NOT NULL);

CREATE TABLE payments(
payment_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
payment_date DATE NOT NULL,
payment_amount DECIMAL(8,2) NOT NULL,
student_id INT(11) NOT NULL);

CREATE TABLE majors(
major_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL);

CREATE TABLE agenda(
student_id INT(11) NOT NULL,
subject_id INT(11) NOT NULL,
CONSTRAINT PK_student_subject_id PRIMARY KEY agenda(student_id, subject_id));

CREATE TABLE subjects(
subject_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
subject_name VARCHAR (50) NOT NULL);


ALTER TABLE students
ADD CONSTRAINT FK_major_id FOREIGN KEY (major_id)
REFERENCES majors (major_id);

ALTER TABLE payments
ADD CONSTRAINT FK_payments_student_id FOREIGN KEY (student_id)
REFERENCES students (student_id);

ALTER TABLE agenda
ADD CONSTRAINT FK_agenda_student_id FOREIGN KEY (student_id)
REFERENCES students (student_id);

ALTER TABLE agenda
ADD CONSTRAINT subject_id FOREIGN KEY (subject_id)
REFERENCES subjects (subject_id);
