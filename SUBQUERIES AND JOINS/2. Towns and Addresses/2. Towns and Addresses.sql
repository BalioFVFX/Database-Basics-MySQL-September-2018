SELECT
t.town_id,
t.name AS `town_name`,
a.address_text
FROM (SELECT * FROM towns 
WHERE name IN('San Francisco', 'Sofia', 'Carnation')) AS t
LEFT JOIN addresses a
ON t.town_id = a.town_id
ORDER BY town_id, address_id;
