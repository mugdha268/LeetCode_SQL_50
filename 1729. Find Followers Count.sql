# Write your MySQL query statement below
SELECT user_id , Count(follower_id) as followers_count
from followers
group by user_id
order by user_id asc;