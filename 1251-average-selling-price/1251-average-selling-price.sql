# Write your MySQL query statement below
# GROUP BY -> product_id 
# WHERE purchase date >= start_data  and  <= end_date 

SELECT p.product_id, ROUND(SUM(p.price*us.units)/SUM(us.units), 2) AS average_price
FROM Prices p 
JOIN UnitsSold us 
ON p.product_id = us.product_id 
AND us.purchase_date >= p.start_date 
AND us.purchase_date <= p.end_date 
GROUP BY p.product_id; 