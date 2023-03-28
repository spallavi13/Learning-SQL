# leetcode problem
# 182. Duplicate Emails

# Write your MySQL query statement below
SELECT  email
FROM Person
GROUP BY email
HAVING( count(Email) > 1);
