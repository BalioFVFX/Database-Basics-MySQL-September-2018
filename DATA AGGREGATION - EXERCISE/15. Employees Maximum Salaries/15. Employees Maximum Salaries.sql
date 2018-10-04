SELECT department_id, MAX(salary) as `max_salary` FROM employees
GROUP BY department_id
HAVING NOT (max_salary >= 30000 && max_salary <= 70000)
ORDER BY department_id;