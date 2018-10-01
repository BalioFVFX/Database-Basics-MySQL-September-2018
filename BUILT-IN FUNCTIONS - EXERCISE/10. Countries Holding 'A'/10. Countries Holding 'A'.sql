SELECT country_name, iso_code FROM countries
WHERE CHAR_LENGTH(country_name) - CHAR_LENGTH(REPLACE(UPPER(country_name), 'A' , '')) >= 3
ORDER BY iso_code;