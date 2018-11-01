SELECT j.id, p.name, sp.name, purpose FROM journeys j
JOIN spaceports sp
ON sp.id = j.destination_spaceport_id
JOIN planets p
ON p.id = sp.planet_id
ORDER BY floor(datediff(journey_end,journey_start) / 365)
LIMIT 1