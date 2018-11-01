SELECT sh.name, sp.name FROM spaceships sh
LEFT JOIN journeys j ON
j.spaceship_id = sh.id
LEFT JOIN spaceports sp
ON sp.id = j.destination_spaceport_id
ORDER BY sh.light_speed_rate DESC
LIMIT 1