SELECT peak_name, river_name, LOWER(CONCAT(peak_name, SUBSTRING(river_name, 2))) as mix 
FROM (SELECT peak_name, river_name FROM peaks, rivers 
WHERE SUBSTRING(peak_name, CHAR_LENGTH(peak_name)) = SUBSTRING(river_name, 1, 1)) as result
ORDER BY mix;
