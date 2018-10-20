SELECT r.id, r.name, COUNT(r.id) AS `issues` FROM repositories r
JOIN issues i
ON r.id = i.repository_id
GROUP BY i.repository_id
ORDER BY issues DESC, r.id
LIMIT 5;