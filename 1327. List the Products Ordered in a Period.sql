SELECT p.product_name , 
       SUM(o.unit) as unit
    FROM products p 
            left join orders o
                 on p.product_id = o.product_id
WHERE EXTRACT(MONTH FROM o.order_date) IN ("02") AND 
      EXTRACT(YEAR FROM o.order_date) IN ("2020") 
GROUP BY p.product_name
HAVING unit >=100;