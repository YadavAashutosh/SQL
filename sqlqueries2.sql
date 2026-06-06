create database if not exists sqlprac;
use sqlprac;
create table college(
rollno int primary key ,
name varchar(25),
marks int not null,
grade varchar(1),
city varchar(10)
);

insert into college(rollno,name,marks,grade,city) values 
(101,"ashu",89,"A","surat"),
(102,"jayu",81,"A","pune"),
(103,"keshav",79,"b","city1"),
(104,"uv",99,"A","surat"),
(105,"harsh",69,"c","surat"),
(106,"tanish",72,"b","pune");

select * from college;
show tables;
show databases;

drop table  if exists table2; 

select name , rollno from college;

select distinct city from college;
select distinct grade,city from college;

select* from college where marks+10>90 or city = "surat";
select* from college where city = "city2";

select * from college where marks between 81 and 89;
select * from college where city in ("surat","pune");
select * from college where marks  not between 81 and 89;
select * from college where city  not in ("surat","pune");
select * from college where city like "%t";
select * from college where city like "_u%";

select * from college limit 3;

select * from college where city like "_u%" limit 3;


select * from college 
order by marks desc 
limit 3;

select count(name) from college;
select max(name) from college;
select min(marks) from college;
select sum(marks) from college;
select avg(marks) from college;

select city from college
group by 
city;

select city,avg(marks) from college
group by city;

select city,avg(marks) from college
group by city
order by avg(marks) asc;

select city from college
group by city
having city="surat";

select city from college
group by city
having count(grade)>1;

select city , count(grade) from college
group by city
having count(grade)>0;

select city from college 
where grade ="A"
group by city
having count(grade)>0
order by city desc
limit 1;
