CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(12,4))
BEGIN
START TRANSACTION;
UPDATE accounts AS a SET balance = balance - money_amount
WHERE a.id = account_id;

IF(money_amount < 0) THEN
ROLLBACK;
END IF;

IF((SELECT balance FROM accounts WHERE id = account_id) < money_amount) THEN
ROLLBACK;
END IF;

COMMIT;

END