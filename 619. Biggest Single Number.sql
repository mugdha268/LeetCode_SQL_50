# Write your MySQL query statement below
with cte as (SELECT num
from Mynumbers
group by num
having count(*) = 1)
SELECT MAX(num) as num from cte;