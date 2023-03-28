# leetcode problems
# 176. Second Highest Salary

# Write your MySQL query statement below
select MAX(salary) as SecondHighestsalary from Employee
where 
salary<(select max(salary)
from employee);
