CREATE PROCEDURE usp_raise_salary_by_id(id INT(11))
BEGIN
UPDATE employees e
SET e.salary = e.salary + e.salary * 0.05
WHERE e.employee_id = id AND e.employee_id IS NOT NULL;
END