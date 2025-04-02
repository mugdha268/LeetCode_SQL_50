SELECT sell_date, 
       count(distinct product) as num_sold,
       GROUP_CONCAT(distinct product ORDER BY product ASC SEPARATOR ',') as products
       from activities
       group by sell_date
       order by sell_date;