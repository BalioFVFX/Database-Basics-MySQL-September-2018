CREATE TABLE logs (log_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
account_id INT(11) NOT NULL, old_sum DECIMAL(12,4) NOT NULL, new_sum DECIMAL(12,4) NOT NULL);

CREATE TRIGGER tr_update_sum AFTER UPDATE ON accounts
FOR EACH ROW
BEGIN
INSERT INTO logs (account_id, old_sum, new_sum) VALUES
(old.id, old.balance, new.balance);
END;

CREATE TABLE notification_emails(id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
recipient INT(11) NOT NULL, subject VARCHAR(50) NOT NULL, body TEXT NOT NULL);

CREATE TRIGGER tr_notification_on_update AFTER INSERT ON logs
FOR EACH ROW
BEGIN
INSERT INTO notification_emails(recipient, subject, body) VALUES
(new.account_id, 
CONCAT('Balance change for account: ', new.account_id),
CONCAT('On ', CURDATE(), ' your balance was changed from ', new.old_sum, ' to ', new.new_sum));
END;