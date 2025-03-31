# Write your MySQL query statement below

SELECT product_id , new_price as price
FROM products
WHERE (product_id, change_date) IN (SELECT product_id, MAX(change_date) as cd
        FROM Products
        WHERE change_date <=  '2019-08-16'
        GROUP BY product_id)

UNION
SELECT distinct product_id, 10 as price
FROM products
WHERE product_id not in (SELECT product_id from products where change_date <= '2019-08-16')
;
    