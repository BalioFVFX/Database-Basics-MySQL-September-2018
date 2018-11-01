CREATE FUNCTION udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE planet_id INT(11);
DECLARE colonists INT(11);
SET planet_id = (SELECT p1.id FROM planets p1 WHERE p1.name = planet_name);

SET colonists = (SELECT COUNT(*) FROM colonists c
LEFT JOIN travel_cards tc
ON tc.colonist_id = c.id
LEFT JOIN journeys j
ON j.id = tc.journey_id
LEFT JOIN spaceports sp
ON sp.id = j.destination_spaceport_id
WHERE sp.id IN(SELECT sp.id FROM spaceports sp
LEFT JOIN planets p
ON p.id = sp.planet_id
WHERE p.id = planet_id));
RETURN colonists;
END