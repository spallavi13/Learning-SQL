# Leetcode problem
# 183. Customers Who Never Order

# Write your MySQL query statement below
SELECT i.name AS Customers
FROM Customers i
LEFT JOIN Orders o
  ON i.id = o.customerId
WHERE o.customerId IS NULL;
