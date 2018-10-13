CREATE TABLE deleted_employees(employee_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL, last_name VARCHAR(100) NOT NULL,
middle_name VARCHAR(100) NOT NULL, job_title VARCHAR(100) NOT NULL,
department_id INT(11) NOT NULL, salary DECIMAL(12, 2) NOT NULL);


CREATE TRIGGER tr_deleted_employees AFTER DELETE ON employees
FOR EACH ROW
BEGIN
INSERT INTO deleted_employees (first_name, last_name, middle_name, job_title,
department_id, salary) VALUES (old.first_name, old.last_name, old.middle_name,
old.job_title, old.department_id, old.salary);
END;