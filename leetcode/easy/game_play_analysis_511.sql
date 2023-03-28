# leetcode problem
# 511. Game Play Analysis I

# Write your MySQL query statement below
SELECT A.player_id, A.event_date AS first_login
FROM Activity A
JOIN (
  SELECT player_id, MIN(event_date) AS first_event_date
  FROM Activity
  GROUP BY player_id
) first_event
ON A.player_id = first_event.player_id AND A.event_date = first_event.first_event_date
ORDER BY A.player_id;
