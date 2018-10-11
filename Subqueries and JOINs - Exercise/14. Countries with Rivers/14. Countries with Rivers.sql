SELECT c.country_name, r.river_name FROM countries c
JOIN continents cn
ON c.continent_code = cn.continent_code
LEFT JOIN countries_rivers cr
ON c.country_code = cr.country_code
LEFT JOIN rivers r
ON r.id = cr.river_id
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;