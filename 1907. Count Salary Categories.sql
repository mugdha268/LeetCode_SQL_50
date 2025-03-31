with cte as(SELECT account_id, (CASE WHEN income < 20000
                THEN 'Low Salary'
                WHEN income <= 50000 AND income >= 20000
                THEN 'Average Salary'
                ELSE
                'High Salary'
                END) as category
                FROM accounts)
                SELECT 'High Salary' as category , COUNT(account_id) as accounts_count
                FROM cte
                WHERE category NOT IN ('Low Salary', 'Average Salary') 
                UNION 
                SELECT 'Average Salary' as category , COUNT(account_id) as       accounts_count
                FROM cte
                WHERE category NOT IN ('Low Salary', 'High Salary') 
                UNION
                SELECT 'Low Salary' as category , COUNT(account_id) as accounts_count
                FROM cte
                WHERE category NOT IN ('Average Salary', 'High Salary')
                ;