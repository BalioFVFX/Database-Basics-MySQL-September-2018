SELECT r.id, r.name, COUNT(DISTINCT c.contributor_id) AS `users` FROM repositories r
LEFT JOIN (SELECT * FROM commits) c
ON c.repository_id = r.id
GROUP BY r.id
ORDER BY users DESC, r.id;