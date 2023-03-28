# leetcode problem
# 608. Tree Node

# Write your MySQL query statement below
SELECT id,
CASE
WHEN P_id IS NULL THEN 'Root'
WHEN id NOT IN (SELECT DISTINCT P_id FROM Tree WHERE P_id IS NOT NULL) THEN 'Leaf'
ELSE 'Inner'
END AS type
FROM Tree;
