SELECT name AS 'game', 
IF(HOUR(start) >= 0 && HOUR(start) < 12, 'Morning',
IF(HOUR(start) >= 12 && HOUR(start) < 18, 'Afternoon',
IF(HOUR(start) >= 18 && HOUR(start) < 24, 'Evening', start))) AS 'Part of the day',

IF(duration <= 3, 'Extra Short', 
IF(duration > 3 && duration <= 6, 'Short',
IF(duration > 6 && duration <= 10, 'Long', 'Extra Long'))) AS 'Duration' FROM games;
