SELECT
COUNT(employee_id) as `count`
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);