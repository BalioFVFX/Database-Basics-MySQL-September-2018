SELECT u.id, u.username, CONCAT(p.size, 'KB') AS `size` FROM users u
JOIN users u2 ON u2.profile_picture_id = u.profile_picture_id
JOIN pictures p ON p.id = u.profile_picture_id
GROUP BY u.username
HAVING COUNT(u.username) > 1
ORDER BY u.id;