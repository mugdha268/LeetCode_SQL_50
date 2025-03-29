# Write your MySQL query statement below
with cte as (SELECT product_id , min(year) as first_year
FROM sales
GROUP BY 1)
SELECT product_id , year as first_year, quantity, price
FROM sales c
WHERE (product_id, year) in (SELECT * from cte);