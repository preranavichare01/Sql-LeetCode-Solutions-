# Write your MySQL query statement below
select event_day  as day,
emp_id, sum(out_time-in_time)  AS  total_time
from employees
group by event_day,emp_id;
