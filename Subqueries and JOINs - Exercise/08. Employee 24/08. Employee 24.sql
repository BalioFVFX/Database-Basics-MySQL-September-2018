SELECT
e.employee_id,
e.first_name,
`project_name`
FROM (SELECT employee_id, first_name FROM employees
WHERE employee_id = 24) e
JOIN employees_projects ep
ON ep.employee_id = e.employee_id
JOIN (SELECT project_id, IF(DATE(start_date) >= DATE('2005-01-01'), NULL, name) AS `project_name` FROM projects) p
ON p.project_id = ep.project_id
ORDER BY `project_name`;