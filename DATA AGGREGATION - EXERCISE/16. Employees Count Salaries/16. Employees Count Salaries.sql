SELECT COUNT(employee_id) AS `no_manager` FROM employees
WHERE ISNULL(manager_id);