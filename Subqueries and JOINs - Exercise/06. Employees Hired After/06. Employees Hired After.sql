SELECT
e.first_name,
e.last_name,
e.hire_date,
d.name AS `dept_name`
FROM (SELECT first_name, last_name, hire_date, department_id FROM employees
WHERE DATE(hire_date) > DATE('1999-01-01')) e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.name IN('Sales', 'Finance')
ORDER BY e.hire_date;