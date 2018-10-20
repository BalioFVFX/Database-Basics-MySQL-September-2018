SELECT u.id, u.username FROM users u
JOIN users_followers uf
ON uf.user_id = u.id
WHERE uf.user_id = uf.follower_id
ORDER BY u.id;