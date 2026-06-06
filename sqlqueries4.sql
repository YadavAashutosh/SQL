use sqlprac;

show tables;

select *  from table1;

alter table table1
add column city varchar(20) default "surat";

alter table table1
drop column city;

alter table table1
rename to tab1;

alter table tab1
rename to table1;

alter table table1
rename column city to mycity;

alter table table1
change mycity city varchar(25);

alter table table1
modify column city varchar(10);

alter table table1
modify  city varchar(5);

create table tab2(
id int primary key );

insert into tab2 values (10);
select* from tab2;

create table tab2fk(
fid int ,
foreign key (fid) references tab2(id)
);

insert into tab2fk values (10);

select * from tab2fk;
set foreign_key_checks=0;
truncate table tab2;

truncate table tab2fk;
set foreign_key_checks=1;
