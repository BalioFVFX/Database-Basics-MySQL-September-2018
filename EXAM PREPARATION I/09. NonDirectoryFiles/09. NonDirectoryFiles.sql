SELECT f.id, f.name, CONCAT(f.size, 'KB') AS `size` FROM files f
LEFT JOIN files pf
ON pf.parent_id = f.id
WHERE pf.id IS NULL
ORDER BY f.id;