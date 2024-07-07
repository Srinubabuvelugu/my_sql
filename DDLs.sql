use intro_sql

show tables

create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
PRIMARY KEY(emp_id)
)

show tables

-- Creating a table 
create table employees_0704
(
firstname varchar(50),
last_name varchar(50),
title varchar(50),
age int,
salary int
)

-- checking the table created or not
show tables

select * from employees_0704;

-- Altering the table 
-- Adding a column to employees_0704
alter table employees_0704
add column gender varchar(1);

-- Droping the column using alter operation

alter table employees_0704
drop column gender;


