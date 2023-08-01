SELECT s.user_id, CASE WHEN c.action IS NULL THEN 0.00
ELSE ROUND(SUM(c.action='confirmed')/COUNT(*),2) END 
AS confirmation_rate
FROM Signups s 
LEFT JOIN Confirmations c 
ON c.user_id = s.user_id
GROUP BY s.user_id; 