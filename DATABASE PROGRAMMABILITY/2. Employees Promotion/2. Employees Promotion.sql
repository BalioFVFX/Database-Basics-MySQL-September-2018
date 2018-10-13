CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(100))
BEGIN
UPDATE employees e
JOIN departments d ON d.department_id = e.department_id
SET e.salary = e.salary + e.salary * 0.05
WHERE d.name = department_name;
END