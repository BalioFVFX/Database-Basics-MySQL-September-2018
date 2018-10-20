SELECT r.id, r.name, (SELECT COUNT(c.repository_id) FROM commits c WHERE c.repository_id = r.id) AS `commits`, (SELECT COUNT(rc.repository_id) FROM repositories_contributors rc
WHERE r.id = rc.repository_id
GROUP BY rc.repository_id) AS `contributors` FROM repositories r
ORDER BY contributors DESC, r.id
LIMIT 1;