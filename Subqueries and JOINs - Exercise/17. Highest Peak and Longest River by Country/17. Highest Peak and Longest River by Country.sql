SELECT c.country_name, MAX(pks.elevation) AS `highest_peak_elevation`, MAX(r.length) AS `longest_river_length` FROM countries c
LEFT JOIN mountains_countries mc
ON c.country_code = mc.country_code
LEFT JOIN peaks pks
ON pks.mountain_id = mc.mountain_id
LEFT JOIN countries_rivers cr
ON cr.country_code = c.country_code
LEFT JOIN rivers r
ON r.id = cr.river_id
GROUP BY c.country_name
ORDER BY pks.elevation DESC, r.length DESC
LIMIT 5;