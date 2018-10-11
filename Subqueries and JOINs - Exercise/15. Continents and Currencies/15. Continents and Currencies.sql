SELECT cr.continent_code, cr.currency_code, cr.crmax AS `currency_usage` FROM (SELECT c.continent_code, c.currency_code, COUNT(c.currency_code) as `crmax` FROM countries c
 GROUP BY c.continent_code, c.currency_code
HAVING crmax > 1
) cr
WHERE crmax >= (SELECT COUNT(currency_code) AS `crmax_in` FROM countries
	WHERE cr.continent_code = continent_code
    GROUP BY continent_code, currency_code
    HAVING crmax_in > 1
    ORDER BY crmax_in DESC
    LIMIT 1
)
ORDER BY cr.continent_code, cr.currency_code