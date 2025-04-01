--Write your MySQL query statement below
(SELECT name as results
FROM (SELECT mr. * , m.title , u.name
FROM MovieRating mr left join movies m
on mr.movie_id = m.movie_id
LEFT join users u
on mr.user_id = u.user_id) p1
GROUP BY name 
order by count(*) desc, name limit 1)
UNION ALL
(SELECT title AS results
FROM MovieRating JOIN Movies USING(movie_id)
WHERE EXTRACT(YEAR_MONTH FROM created_at) = 202002
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1);