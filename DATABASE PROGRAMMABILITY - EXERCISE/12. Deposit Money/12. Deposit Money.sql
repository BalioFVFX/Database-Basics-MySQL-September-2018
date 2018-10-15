CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(12,4))
BEGIN
UPDATE accounts AS a SET balance = money_amount + balance
WHERE a.id = account_id;

IF(money_amount <= 0) THEN
ROLLBACK;
END IF;

IF((SELECT COUNT(id) FROM accounts WHERE id = account_id) <> 1)
THEN ROLLBACK;
END IF;

COMMIT;

END