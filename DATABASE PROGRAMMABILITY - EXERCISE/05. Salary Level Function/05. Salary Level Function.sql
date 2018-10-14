CREATE FUNCTION ufn_get_salary_level(input_salary DOUBLE)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
DECLARE result VARCHAR(10);
RETURN CASE
WHEN input_salary < 30000 THEN 'Low'
WHEN input_salary >= 30000 AND input_salary <= 50000 THEN 'Average'
WHEN input_salary > 50000 THEN 'High'
END;
END