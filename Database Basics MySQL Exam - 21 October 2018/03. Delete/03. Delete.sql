DELETE FROM colonists
WHERE id IN (SELECT id FROM (SELECT c.id FROM colonists c
LEFT JOIN travel_cards t 
ON t.colonist_id = c.id
WHERE t.journey_id IS NULL) as c
WHERE id = c.id)