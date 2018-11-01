SELECT p.name, sp.name FROM planets p
LEFT JOIN spaceports sp
ON p.id = sp.planet_id
LEFT JOIN journeys j
ON j.destination_spaceport_id = sp.id
WHERE j.purpose = 'Educational'
ORDER BY sp.name DESC;