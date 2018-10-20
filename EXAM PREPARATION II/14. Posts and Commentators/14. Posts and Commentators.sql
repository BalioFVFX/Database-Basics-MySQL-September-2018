SELECT id, caption, COUNT(users) as `users` FROM (SELECT DISTINCT p.id, p.caption, c.user_id AS `users` FROM posts p
LEFT JOIN comments c
ON c.post_id = p.id

ORDER BY p.id) as t
GROUP BY id
ORDER BY users DESC, id