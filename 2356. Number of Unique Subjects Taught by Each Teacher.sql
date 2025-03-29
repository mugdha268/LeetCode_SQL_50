# Write your MySQL query statement below
SELECT teacher_id , COUNT(Distinct subject_id) as cnt
FROM teacher
group by teacher_id;