ALTER TABLE minions
ADD town_id INT(11);

ALTER TABLE minions
ADD CONSTRAINT FK_townId
FOREIGN KEY (town_id) REFERENCES towns(id);