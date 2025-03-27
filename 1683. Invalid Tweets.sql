# Write your MySQL query statement below
with cte as( SELECT tweet_id , length(content) as len
from tweets)
select tweet_id
from cte
where len > 15;