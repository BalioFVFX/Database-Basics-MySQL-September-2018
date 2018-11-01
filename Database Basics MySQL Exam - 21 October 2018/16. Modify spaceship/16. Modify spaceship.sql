CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(spaceship_name VARCHAR(50), light_speed_rate_increse INT(11))
BEGIN
START TRANSACTION;
UPDATE spaceships
SET light_speed_rate = light_speed_rate + light_speed_rate_increse
WHERE name = spaceship_name;

IF((SELECT name FROM spaceships
WHERE name = spaceship_name) IS NULL) THEN
ROLLBACK;
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';
END IF;
END