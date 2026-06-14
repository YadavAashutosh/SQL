--184. Department Highest Salary

# Write your MySQL query statement below
select  Department , Employee , Salary from 
(select d.name as Department , e.name as Employee , e.salary as Salary, departmentid , dense_rank() over (partition by departmentid order by salary desc) as r from Employee as e 
inner join Department as d 
on e.departmentId=d.id ) 
as joinedtable 
where r = 1;