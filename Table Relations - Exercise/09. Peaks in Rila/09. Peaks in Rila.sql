SELECT mountains.mountain_range, 
peaks.peak_name, 
peaks.elevation AS `peak_elevation` 
FROM peaks
JOIN mountains 
ON mountains.id = peaks.mountain_id
WHERE peaks.mountain_id = 17
ORDER BY `peak_elevation` DESC;