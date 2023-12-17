# 197. Rising Temperature

# Write your MySQL query statement below
SELECT w1.id
FROM Weather AS w1
INNER JOIN Weather AS w2
ON DATEDIFF(w1.RecordDate, w2.RecordDate) = 1
WHERE w1.temperature > w2.temperature
