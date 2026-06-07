use sqlprac;
show tables;
select*  from college;

alter table college
change name fullname varchar(20) not null;

alter table college
add colname int;

alter table college
drop colname;

set sql_safe_updates=0;
delete from college 
where marks<73;

CREATE TABLE stud (
    stud_id INT PRIMARY KEY,
    name VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO stud VALUES (1, 'Ashu', 'Surat');
INSERT INTO stud VALUES (2, 'Jayu', 'Pune');
INSERT INTO stud VALUES (3, 'Khusi', 'Mumbai');
INSERT INTO stud VALUES (4, 'Rajesh', 'Surat');
INSERT INTO stud VALUES (5, 'Amit', 'Delhi');

CREATE TABLE subj (
    stud_id INT, 
    subject_name VARCHAR(20),
    marks INT
);

INSERT INTO subj VALUES (1, 'Python', 90);
INSERT INTO subj VALUES (2, 'SQL', 85);
INSERT INTO subj VALUES (3, 'AI/ML', 95);
INSERT INTO subj VALUES (4, 'Web Dev', 88);
INSERT INTO subj VALUES (6, 'Compiler Design', 75);

select * from stud 
inner join subj
on stud.stud_id=subj.stud_id;

select * from stud as s
inner join subj as sj
on s.stud_id=sj.stud_id;

select * from stud 
left join subj
on stud.stud_id=subj.stud_id;

select * from stud 
right join subj
on stud.stud_id=subj.stud_id;

select * from stud 
left join subj
on stud.stud_id=subj.stud_id
Union 
select * from stud 
right join subj
on stud.stud_id=subj.stud_id;

select stud_id from stud
intersect
select stud_id from subj; 

select * from stud 
left join subj
on stud.stud_id=subj.stud_id
where subj.stud_id is null;

select * from stud 
right join subj
on stud.stud_id=subj.stud_id
where stud.stud_id is null;

select * from stud 
left join subj
on stud.stud_id=subj.stud_id
where subj.stud_id is not null;

select * from stud 
left join subj
on stud.stud_id=subj.stud_id
where subj.stud_id is null
Union
select * from stud 
right join subj
on stud.stud_id=subj.stud_id
where stud.stud_id is null ;

USE sqlprac;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(20),
    role VARCHAR(20),
    manager_id INT
);

INSERT INTO employees VALUES 
(1, 'Rajesh', 'CEO', NULL),
(2, 'Ashu', 'AI Engineer', 1),
(3, 'Amit', 'Web Dev', 1),
(4, 'Jayu', 'ML Intern', 2),
(5, 'Khusi', 'UI Designer', 3);

select *  from employees as a 
join employees as b 
on a.emp_id = b. manager_id;

select a.name as manager ,b.name from employees as a 
join employees as b 
on a.emp_id = b.manager_id;