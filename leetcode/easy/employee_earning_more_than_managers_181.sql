# leetcode problems
# 181. Employees Earning More Than Their Managers

# Write your MySQL query statement below
SELECT e1.name as Employee
FROM employee e1
JOIN employee m ON e1.managerId = m.id
WHERE e1.salary > m.salary
