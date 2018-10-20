DELETE FROM users
WHERE users.id = 
(SELECT u.id FROM (SELECT * FROM users u
LEFT JOIN users_followers uf
ON uf.user_id = u.id
WHERE user_id IS NULL AND follower_id IS NULL) u
WHERE users.id = u.id);