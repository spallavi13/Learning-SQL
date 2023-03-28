# Leetcode Problem:
# 584. Find Customer Referee

# Write your MySQL query statement below
select name  from Customer
WHERE referee_id  IS NULL OR referee_id !=2;
