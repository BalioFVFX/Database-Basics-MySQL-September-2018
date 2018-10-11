SELECT 
mc.country_code, 
mountain_range,
p.peak_name,
p.elevation
FROM mountains m 
JOIN mountains_countries mc
ON mc.mountain_id = m.id
JOIN peaks p
ON p.mountain_id = m.id
WHERE p.elevation > 2835 AND mc.country_code = 'BG'
ORDER BY p.elevation DESC;