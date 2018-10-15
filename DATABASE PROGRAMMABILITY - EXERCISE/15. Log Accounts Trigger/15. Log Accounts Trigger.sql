CREATE TABLE logs (log_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
account_id INT(11) NOT NULL, old_sum DECIMAL(12,4) NOT NULL, new_sum DECIMAL(12,4) NOT NULL);


CREATE TRIGGER tr_update_sum AFTER UPDATE ON accounts
FOR EACH ROW
BEGIN
INSERT INTO logs (account_id, old_sum, new_sum) VALUES
(old.id, old.balance, new.balance);
END