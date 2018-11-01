INSERT INTO travel_cards(card_number, job_during_journey, colonist_id, journey_id)
SELECT 
IF(c.birth_date  '1980-01-01',
CONCAT(YEAR(c.birth_date), DAY(c.birth_date), LEFT(c.ucn, 4)), 
CONCAT(YEAR(c.birth_date), MONTH(c.birth_date), RIGHT(c.ucn, 4))), 

IF(c.id MOD 2 = 0, 'Pilot',
IF(c.id MOD 3 = 0, 'Cook',
'Engineer')),

c.id,
SUBSTRING(c.ucn, 1, 1)

FROM colonists c
WHERE c.id = 96 AND c.id = 100