SELECT department_id, AVG(IF(department_id = 1, salary + 5000, salary)) AS `avg_salary` FROM employees
WHERE salary > 30000 AND NOT manager_id = 42
GROUP BY department_id
ORDER BY department_id;