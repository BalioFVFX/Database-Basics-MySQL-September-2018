UPDATE users uout
SET profile_picture_id = (SELECT IF(COUNT(uf.user_id) = 0, u.id, COUNT(uf.user_id)) FROM (SELECT * FROM users) u
LEFT JOIN users_followers uf
ON u.id = uf.user_id
WHERE uout.id = u.id
GROUP BY uf.user_id)
WHERE profile_picture_id IS NULL;