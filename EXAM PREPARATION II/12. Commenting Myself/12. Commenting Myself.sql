SELECT u.id, u.username, IFNULL(c.my_comments, 0) AS `my_comments` FROM users u
LEFT JOIN posts p
ON p.user_id = u.id

LEFT JOIN 
(SELECT c.user_id, COUNT(c.post_id) AS `my_comments` FROM comments c
JOIN posts p ON p.id = c.post_id
WHERE p.user_id = c.user_id
GROUP BY c.user_id) 
AS c
ON c.user_id = u.id
GROUP BY (u.id)
ORDER BY my_comments DESC, u.id;