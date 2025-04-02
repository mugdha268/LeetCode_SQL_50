with cte as (
    SELECT  id, salary, dense_rank() over (order by salary desc) as rnk
        FROM employee 
        )
SELECT MAX(case when rnk not in (2)
        then null
        when rnk = 2
        then salary 
        end ) as SecondHighestSalary 
FROM cte;