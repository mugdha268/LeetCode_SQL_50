# Write your MySQL query statement below
SELECT class
FROM courses
GROUP by class
having count(*) > 4;