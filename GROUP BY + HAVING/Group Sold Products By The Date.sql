# GROUP_CONCAT in MySQL is used to combine multiple values from a group into a single string.
select  a.sell_date,count(distinct(a.product)) as num_sold,GROUP_CONCAT(DISTINCT a.product ORDER BY a.product ASC) AS products
from Activities a
group by a.sell_date
order by a.sell_date asc;
