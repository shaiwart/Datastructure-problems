# This will give you the IDs of managers who are reported at least 5 times. 

# SELECT managerId
# FROM Employee e1 
# GROUP BY managerId
# HAVING COUNT(managerId) >= 5

# Now use the above select query as Inline view 
# and join it with the orignal Employee table to get the Name of the manager. 

# SELECT e.name
# FROM employee e 
# JOIN (Inline_View) AS m 
# ON e.id = m.managerId 


# Finally replace the Inline_view from the above query with the first query. 

SELECT e.name
FROM employee e 
JOIN (SELECT managerId
FROM Employee e1 
GROUP BY managerId
HAVING COUNT(managerId) >= 5) as m 
ON e.id = m.managerId 