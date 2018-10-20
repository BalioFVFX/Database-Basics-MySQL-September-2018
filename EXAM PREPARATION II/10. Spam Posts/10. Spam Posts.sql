SELECT p.id, p.caption, COUNT(c.content) as `comments` FROM posts p
LEFT JOIN comments c
ON c.post_id = p.id
GROUP BY p.id
ORDER BY comments DESC, p.id
LIMIT 5;