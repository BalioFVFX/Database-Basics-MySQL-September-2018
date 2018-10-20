INSERT INTO issues (title, issue_status, repository_id, assignee_id)
SELECT CONCAT('Critical Problem With ', f.name, '!'),
'open', CEIL((f.id * 2) / 3), cm.contributor_id FROM files f
JOIN commits cm ON cm.id = f.commit_id
WHERE f.id >= 46 AND f.id <= 50;
