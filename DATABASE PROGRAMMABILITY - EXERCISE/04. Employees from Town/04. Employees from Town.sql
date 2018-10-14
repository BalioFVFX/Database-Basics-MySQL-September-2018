CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(20))
BEGIN
SELECT e.first_name, e.last_name FROM employees e
JOIN addresses a
ON a.address_id = e.address_id
JOIN towns t
ON t.town_id = a.town_id
WHERE t.name = town_name
ORDER BY first_name, last_name, employee_id;
END