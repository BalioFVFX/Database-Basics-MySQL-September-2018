UPDATE journeys j
SET purpose = IF(j.id MOD 2 = 0, 'Medical',
IF(j.id MOD 3 = 0, 'Technical',
IF(j.id MOD 5 = 0, 'Educational',
IF(j.id MOD 7 = 0, 'Military', j.purpose))))
WHERE
j.id MOD 2 = 0 OR
j.id MOD 3 = 0 OR
j.id MOD 5 = 0 OR 
j.id MOD 7 = 0;