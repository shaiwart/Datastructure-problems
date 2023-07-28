# Write your MySQL query statement below
# SELECT managerId
# FROM Employee e1 
# GROUP BY managerId
# HAVING COUNT(managerId) >= 5


# SELECT e.name
# FROM employee e 
# JOIN (managerTable) m 
# ON e.id = m.managerId 


SELECT e.name
FROM employee e 
JOIN (SELECT managerId
FROM Employee e1 
GROUP BY managerId
HAVING COUNT(managerId) >= 5) as m 
ON e.id = m.managerId 
