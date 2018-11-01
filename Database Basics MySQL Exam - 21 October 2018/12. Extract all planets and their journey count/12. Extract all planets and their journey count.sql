SELECT p.name, IFNULL(SUM(j.maxi),0) AS `journeys_count` FROM planets p
LEFT JOIN spaceports sp
ON sp.planet_Id = p.id
JOIN (SELECT j.destination_spaceport_id, COUNT(j.destination_spaceport_id) `maxi` FROM journeys j
LEFT JOIN spaceports sp
ON sp.id = j.destination_spaceport_id
GROUP BY j.destination_spaceport_id) AS j
ON j.destination_spaceport_id = sp.id
GROUP BY p.id