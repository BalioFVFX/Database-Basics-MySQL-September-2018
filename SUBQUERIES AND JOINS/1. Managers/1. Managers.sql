SELECT
e.employee_id,
CONCAT(e.first_name, ' ', e.last_name) as `full_name`,
d.department_id, 
d.name AS `department_name`
FROM departments d
LEFT JOIN employees e
ON e.employee_id = d.manager_id
ORDER BY e.employee_id
LIMIT 5;