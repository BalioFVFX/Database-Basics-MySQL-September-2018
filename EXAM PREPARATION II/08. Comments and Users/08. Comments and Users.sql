SELECT c.id, CONCAT(u.username, ' : ', c.content) AS `full_comment` FROM users u
JOIN comments c
ON c.user_id = u.id
ORDER BY c.id DESC;