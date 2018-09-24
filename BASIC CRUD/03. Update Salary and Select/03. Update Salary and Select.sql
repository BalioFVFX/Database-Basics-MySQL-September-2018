UPDATE employees
SET salary = salary + salary * 0.10
WHERE job_title = 'Therapist';

SELECT salary FROM employees ORDER BY salary;
