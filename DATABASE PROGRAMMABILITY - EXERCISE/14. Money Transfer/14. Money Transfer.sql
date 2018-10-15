CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, amount DECIMAL(12,4))
BEGIN

START TRANSACTION;

UPDATE accounts
SET balance = balance - amount
WHERE id = from_account_id;

UPDATE accounts
SET balance = balance + amount
WHERE id = to_account_id;


IF(amount <= 0) THEN
ROLLBACK;
END IF;


IF((SELECT COUNT(id) FROM accounts WHERE id = from_account_id) <> 1) THEN
ROLLBACK;
END IF;


IF((SELECT COUNT(id) FROM accounts WHERE id = to_account_id) <> 1) THEN
ROLLBACK;
END IF;


IF((SELECT balance FROM accounts WHERE id = from_account_id) < amount) THEN
ROLLBACK;
END IF;

COMMIT;

END