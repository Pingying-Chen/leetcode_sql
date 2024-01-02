# 1633. Percentage of Users Attended a Contest

# Write your MySQL query statement below

SELECT
    contest_id,
    ROUND(COUNT(DISTINCT user_id)/(select count(user_id) from Users) * 100, 2) AS percentage
FROM
    Register
GROUP BY
    contest_id
ORDER BY
    percentage DESC,
    contest_id;

SELECT
    r.contest_id,
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM Users)) * 100, 2) AS percentage
FROM
    Users u
    INNER JOIN Register r ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;
