SELECT t.user_id, u.username, t.caption FROM (SELECT p.id, p.user_id, p.caption, COUNT(c.user_id) as `cmnts` FROM posts p
LEFT JOIN comments c
ON c.post_id = p.id
GROUP BY p.id
ORDER BY cmnts DESC) as t

JOIN users u
ON u.id = t.user_id
GROUP BY user_id
ORDER BY user_id