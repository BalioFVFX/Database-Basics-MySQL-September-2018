SELECT t1.department_id, t1.third_highest_salary FROM (SELECT department_id, (SELECT DISTINCT salary FROM employees e2
WHERE e1.department_id = e2.department_id
ORDER BY salary DESC
LIMIT 2,1) AS `third_highest_salary` FROM employees e1) AS t1
WHERE third_highest_salary IS NOT NULL
GROUP BY t1.department_id
ORDER BY t1.department_id;