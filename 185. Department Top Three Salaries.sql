with cte as (
    SELECT e.departmentId ,
           d.name as Department, 
           e.name as Employee , 
           e.salary as Salary , 
           dense_rank() OVER (partition by e.departmentId order by salary desc ) as rnk
                FROM employee e
                    LEFT JOIN department d
                         on d.Id = e.departmentId)
            Select Department, Employee, Salary 
                from cte
                  where rnk <= 3;