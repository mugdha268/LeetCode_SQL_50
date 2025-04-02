with cte as( SELECT email, min(id) as min
                FROM person
                group by email)
            DELETE FROM person where id not in (select min from cte);