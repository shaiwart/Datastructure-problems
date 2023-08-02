# Write your MySQL query statement below 

# SELECT ROUND(SUM(rating/position)/COUNT(*), 2) quality
# FROM Queries q 
# GROUP BY query_name




SELECT query_name, 
ROUND(SUM(rating/position)/COUNT(*), 2) quality, 

ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END
) / COUNT(*) * 100, 2) AS poor_query_percentage

FROM Queries q
GROUP BY query_name