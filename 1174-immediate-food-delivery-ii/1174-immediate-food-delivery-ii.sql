# Write your MySQL query statement below
WITH cte AS (SELECT customer_id, MIN(order_date) AS min_order, MIN(customer_pref_delivery_date) AS min_del
FROM Delivery
GROUP BY customer_id) 

SELECT ROUND(SUM(CASE WHEN min_order = min_del THEN 1 ELSE 0 END)/COUNT(*)*100, 2) AS immediate_percentage
FROM cte;
