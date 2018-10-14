CREATE PROCEDURE usp_get_holders_with_balance_higher_than(input_balance DOUBLE)
BEGIN
SELECT ah.first_name, ah.last_name FROM account_holders ah
JOIN accounts a
ON a.account_holder_id = ah.id
GROUP BY ah.id
HAVING SUM(a.balance) > input_balance
ORDER BY a.id, first_name, last_name;
END