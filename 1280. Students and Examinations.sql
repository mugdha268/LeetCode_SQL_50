# Write your MySQL query statement below
SELECT s.student_id , s.student_name, j.subject_name, COUNT(e.student_id) AS attended_exams 
FROM Students s 
CROSS JOIN Subjects j
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND j.subject_name = e.subject_name
GROUP BY 1,2,3
ORDER BY s.student_id , s.student_name, j.subject_name ;