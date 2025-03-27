# Write your MySQL query statement below
SELECT e.name , b.bonus
FROM employee e left join bonus b
on e.empId = b.empID
WHERE b.bonus < 1000 or b.bonus is null;