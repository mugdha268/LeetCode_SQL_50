-- Write your MySQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, LENGTH(name) - 1))) AS name
FROM users
order by user_id;