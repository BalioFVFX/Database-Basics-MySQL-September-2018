CREATE PROCEDURE udp_findbyextension(extension VARCHAR(25))
BEGIN
SELECT f.id, f.name AS `caption`, CONCAT(f.size, 'KB') AS 'user' FROM files f
WHERE SUBSTRING_INDEX(f.name,'.',-1) = extension;
END