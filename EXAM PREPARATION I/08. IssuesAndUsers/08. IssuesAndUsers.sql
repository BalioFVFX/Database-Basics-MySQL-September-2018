SELECT i.id, CONCAT(u.username, ' : ', i.title) AS `issue_assignee` FROM issues i
JOIN users u
ON u.id = i.assignee_id
ORDER BY i.id DESC;