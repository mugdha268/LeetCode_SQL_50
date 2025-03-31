# Write your MySQL query statement below
SELECT employee_id, department_id
FROM employee
WHERE employee_id in (SELECT employee_id
                            FROM employee
                            GROUP BY employee_id having count(*) = 1)
UNION
(SELECT employee_id, department_id
FROM employee
WHERE employee_id in (SELECT employee_id
                            FROM employee
                            GROUP BY employee_id having count(*) > 1)
AND primary_flag = 'Y');