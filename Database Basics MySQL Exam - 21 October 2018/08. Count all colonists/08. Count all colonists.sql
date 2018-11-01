SELECT COUNT(*) FROM colonists c
LEFT JOIN travel_cards tc
ON c.id = tc.colonist_id
LEFT JOIN journeys j
ON j.id = tc.journey_id
WHERE j.purpose = 'Technical'