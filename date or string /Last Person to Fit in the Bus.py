#link:https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/

WITH Boarding AS (
  SELECT *,
         SUM(weight) OVER (ORDER BY turn) AS cumulative_weight
  FROM Queue
)
SELECT  person_name
FROM Boarding
WHERE cumulative_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
