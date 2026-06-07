use sqlprac;
select * from college;

select * from college 
where marks > (select avg(marks) from college);

SELECT city, AVG(marks) as avg
FROM college
WHERE marks >= 80
GROUP BY city
HAVING AVG(marks) > 85
order by avg desc
LIMIT 1;

select * from stud 
left join subj
on stud.stud_id=subj.stud_id;

select * from (
select name ,city ,subject_name ,marks from stud
right join subj
on stud.stud_id=subj.stud_id)as jointable;

select * from (
select name ,city ,subject_name ,marks from stud
right join subj
on stud.stud_id=subj.stud_id)as jointable
where city is null;

select name , (select subject_name from subj where stud.stud_id = subj.stud_id ) as subjects from stud;

create view view1 as
select fullname,marks from college;

select * from view1;

drop view view1;

commit;
select *  from table1;

set sql_safe_updates=0;
set sql_safe_updates=1;

delete from table1
where city="surat";
rollback;

start transaction;
insert into table1(id,name,age) values (1,"Ashu",18);
delete from table1
where age = 18 ;
rollback;
commit;