CREATE PROCEDURE usp_calculate_future_value_for_account(acc_id INT, int_rate DECIMAL(12,4))
BEGIN
DECLARE fv DECIMAL(10,4);
SET fv = (SELECT balance FROM accounts WHERE id = acc_id) *( POW( (1 + int_rate), 5) );
SELECT 
a.id AS `account_id`, 
ah.first_name, ah.last_name, 
a.balance AS `current_balance`,
fv
FROM account_holders ah
JOIN accounts a
ON a.account_holder_id = ah.id
WHERE a.id = acc_id;
END