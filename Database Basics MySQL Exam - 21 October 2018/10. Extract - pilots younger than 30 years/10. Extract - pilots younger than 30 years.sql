SELECT sh.name, sh.manufacturer FROM travel_cards tc
LEFT JOIN (SELECT c.id, c.first_name, c.birth_date, tc.job_during_journey, tc.colonist_id, journey_id FROM colonists c
LEFT JOIN travel_cards tc
ON tc.colonist_id = c.id
WHERE floor(datediff('2019-01-01', c.birth_date) / 365) < 30) pilots
ON pilots.colonist_id = tc.colonist_id

LEFT JOIN journeys j
ON tc.journey_id = j.id
LEFT JOIN spaceships sh
ON sh.id = j.spaceship_id
WHERE pilots.id IS NOT NULL AND tc.job_during_journey = 'Pilot'
GROUP BY sh.name
ORDER BY sh.name