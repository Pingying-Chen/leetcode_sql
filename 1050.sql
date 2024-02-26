# 1050. Actors and Directors Who Cooperated At Least Three Times

# Write your MySQL query statement below

SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(timestamp) >= 3;
