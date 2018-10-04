SELECT SUM(a.deposit_amount - b.deposit_amount) AS `sum_difference`
FROM wizzard_deposits AS `a`, wizzard_deposits AS `b`
WHERE b.id = a.id + 1;