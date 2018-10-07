CREATE TABLE students(
student_id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL);

CREATE TABLE exams(
exam_id INT(11) NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL);

CREATE TABLE students_exams(
student_id INT(11) NOT NULL,
exam_id INT(11) NOT NULL,
CONSTRAINT PK_primary_keys PRIMARY KEY (student_id, exam_id),
CONSTRAINT FK_student_id FOREIGN KEY (student_id)
REFERENCES students(student_id),
CONSTRAINT FK_exam_id FOREIGN KEY (exam_id)
REFERENCES exams(exam_id));

INSERT INTO students(name) VALUES ('Mila');
INSERT INTO students(name) VALUES ('Toni');
INSERT INTO students(name) VALUES ('Ron');

INSERT INTO exams(exam_id, name) VALUES (101, 'Spring MVC');
INSERT INTO exams(exam_id, name) VALUES (102, 'Neo4j');
INSERT INTO exams(exam_id, name) VALUES (103, 'Oracle 11g');

INSERT INTO students_exams(student_id, exam_id) VALUES(
1, 101);
INSERT INTO students_exams(student_id, exam_id) VALUES(
1, 102);
INSERT INTO students_exams(student_id, exam_id) VALUES(
2, 101);
INSERT INTO students_exams(student_id, exam_id) VALUES(
3, 103);
INSERT INTO students_exams(student_id, exam_id) VALUES(
2, 102);
INSERT INTO students_exams(student_id, exam_id) VALUES(
2, 103);