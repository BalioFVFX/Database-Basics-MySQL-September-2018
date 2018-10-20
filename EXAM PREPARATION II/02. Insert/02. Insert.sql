INSERT INTO comments (content, user_id, post_id)
SELECT CONCAT('Omg!', u.username,'!This is so cool!'), 
CEIL((p.id * 3) / 2),
p.id
FROM posts p
LEFT JOIN users u 
ON u.id = p.user_id
WHERE p.id >= 1 AND p.id <= 10;