-- 619. Biggest Single Number

# Write your MySQL query statement below
select max(num) as num from (select num , count(num) as c
from MyNumbers
group by num) a
where c = 1 
