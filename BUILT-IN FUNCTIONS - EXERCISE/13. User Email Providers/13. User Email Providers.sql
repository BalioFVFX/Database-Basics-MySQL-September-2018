SELECT user_name, SUBSTRING(email, LOCATE('@', email) + 1) as 'Email Provider' FROM users
ORDER BY `Email Provider`, user_name;