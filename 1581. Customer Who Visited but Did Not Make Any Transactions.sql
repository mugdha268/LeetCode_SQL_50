SELECT customer_id, count(customer_id) as count_no_trans
    FROM Visits 
        WHERE visit_id NOT IN (Select visit_id from transactions)
           Group by 1
           order by count_no_trans asc;