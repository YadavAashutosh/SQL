CREATE DATABASE sqlprac;
USE sqlprac;

CREATE TABLE table1(
   id INT PRIMARY KEY ,
   name VARCHAR(50),
   age INT NOT NULL
);

CREATE TABLE table2(
   id INT PRIMARY KEY ,
   name VARCHAR(50),
   age INT NOT NULL
);

INSERT INTO table1 VALUES(1,"ASHU",20);
INSERT INTO table1 VALUES(2,"KESHAV",18);
INSERT INTO table1(id,name,age)
 Values 
 (3,"jayu",19),
 (4,"abhi",20);


SELECT * FROM table1;
SELECT * FROM table2;

drop table if exists table2;


SHOW DATABASES;