SELECT
e.employee_id,
e.first_name,
e.salary,
d.name AS `department_name`
FROM (SELECT employee_id, first_name, salary, department_id FROM employees
WHERE salary > 15000) e
JOIN departments d
ON d.department_id = e.department_id
ORDER BY e.department_id DESC, employee_id
LIMIT 5;