# Write your MySQL query statement below
SELECT contest_id, ROUND(count(distinct user_id) / (SELECT count(*) FROM Users) * 100 ,2) AS percentage
FROM register r 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id; 