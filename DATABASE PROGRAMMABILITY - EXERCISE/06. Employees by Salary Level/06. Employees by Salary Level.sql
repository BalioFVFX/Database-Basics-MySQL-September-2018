CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
SELECT first_name, last_name FROM employees
WHERE
CASE
WHEN salary < 30000 THEN 'Low'
WHEN salary >= 30000 AND salary <= 50000 THEN 'Average'
WHEN salary > 50000 THEN 'High'
END = salary_level
ORDER BY first_name DESC, last_name DESC;
END