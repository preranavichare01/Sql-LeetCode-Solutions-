/* Write your PL/SQL query statement below */
SELECT * FROM  Cinema
WHERE  Mod(id,2)!=0 AND description !='boring'
order by rating desc;
