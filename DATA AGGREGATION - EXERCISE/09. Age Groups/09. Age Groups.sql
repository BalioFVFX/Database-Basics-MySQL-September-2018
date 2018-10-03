SELECT '[0-10]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 0 && age <= 10
GROUP BY `age_group`;
SELECT '[11-20]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 11 && age <= 20
GROUP BY `age_group`;
SELECT '[21-30]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 21 && age <= 30
GROUP BY `age_group`;
SELECT '[31-40]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 31 && age <= 40
GROUP BY `age_group`;
SELECT '[41-50]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 41 && age <= 50
GROUP BY `age_group`;
SELECT '[51-60]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 51 && age <= 60
GROUP BY `age_group`;
SELECT '[61+]' AS `age_group`, COUNT(id) AS `wizard_count` FROM wizzard_deposits
WHERE age >= 61
GROUP BY `age_group`;
