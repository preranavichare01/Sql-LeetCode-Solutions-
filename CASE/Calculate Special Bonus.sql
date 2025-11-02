SELECT employee_id,
       
       CASE
           WHEN employee_id % 2 <> 0 AND LOWER(name) NOT LIKE 'm%' THEN salary
           ELSE 0
       END AS bonus
FROM employees;
