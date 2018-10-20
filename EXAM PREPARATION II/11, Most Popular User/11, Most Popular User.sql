SELECT id, username, (SELECT COUNT(p.id) FROM posts p
WHERE p.user_id = u.id) AS `posts`, followers FROM(SELECT u.id, u.username, COUNT(u.id) AS `followers` FROM users u
JOIN users_followers uf
ON u.id = uf.user_id
GROUP BY u.id
ORDER BY followers DESC
LIMIT 1) u;