CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE employees_living_in_town INT;
SELECT COUNT(e.employee_id) INTO employees_living_in_town FROM employees e
JOIN addresses a
ON a.address_id = e.address_id
JOIN towns t
ON t.town_id = a.town_id
WHERE t.name = town_name;
RETURN employees_living_in_town;
END