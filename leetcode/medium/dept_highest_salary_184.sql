# leetcode problem
# 184. Department Highest Salary

# Write your MySQL query statement below
SELECT D.Name as Department, E.Name as Employee, Salary FROM Employee E 
inner join Department D on E.DepartmentId = D.Id
 WHERE (DepartmentId,Salary) in(SELECT DepartmentId, MAX(Salary)
  FROM Employee group by DepartmentId)
