show databases;

use sqlprac;

show tables;

-- to deactive safe mode
set sql_safe_updates=0;

update college
set grade="o"
where grade = "A";

select * from college;

delete from college
where marks<70;

select * from college;

create table course(
id int primary key,
cname varchar(20) not null
);

drop table if exists staff;

create table staff(
name varchar(25) not null,
cid int ,
foreign key (cid) references course(id)
on update cascade
on delete cascade
);

insert into course(id,cname) values
(1,"AIML"),
(2,"SE");

insert into staff(name,cid) values
("Abc" , 1),
("Def" , 2),
("Ghi" , 1);

update course
set id=3
where cname ="SE";

select * from course;
select * from staff;