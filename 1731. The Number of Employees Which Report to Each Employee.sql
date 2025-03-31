# Write your MySQL query statement below
with cte as (SELECT reports_to as employee_id , 
       count(employee_id) as reports_count,
       ROUND(avg(age),0) as average_age
    FROM Employees
    WHERE reports_to is not null
    GROUP BY 1
    order by employee_id asc)
SELECT c.employee_id , e.name , c.reports_count , c.average_age
FROM cte c left join employees e
on c.employee_id = e.employee_id ;