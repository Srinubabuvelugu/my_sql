use intro_sql
-- # DML -> 1.  INSERT
--  create employee_0705 table 
create table employee_0705
(
emp_name varchar(50),
designation varchar(30),
age int,
salary float
)

-- insert values into employee_0705 table
INSERT into employee_0705 values ('jocie Weber','Secretary', 28, 19000);
INSERT into employee_0705 values ('Potsy Weber','Programmer', 32, 45300);
INSERT into employee_0705 values ('Disk Smith','Programmer It', 28, 75020);

select * from employee_0705;

-- entering the 5 more records
INSERT into employee_0705 values ('Jevana','Data Anlytic', 26, 39000);
INSERT into employee_0705 values ('Sreenu','Data Scintist', 25, 45300);
INSERT into employee_0705 values ('Venala','Programmer It', 28, 50000);
INSERT into employee_0705 values ('Sumathi','Programmer', 32, 45300);
INSERT into employee_0705 values ('Kalki','Data Engineer', 24, 35000);

select * from employee_0705;

-- 1. slecting all columns for everyone with a salary over 30000
select * from employee_0705
where salary > 30000;

-- 2. select all columns for everyone that's under 30 yeras old
select * from employee_0705
where age < 30;

-- 3. select emp_name, salary, for anyone with "Programmer in their table
select emp_name, salary from employee_0705
where designation like 'Programmer';

-- 4. select all collumns thoes whose name contains 'ebe'
select * from employee_0705
where emp_name like '%ebe%';

-- 5. select all cloumns for every one whoes name ends with "th"
select * from employee_0705


-- DML -> 2. UPDATE
-- Syntax: UPDATE table_name SET column_name = 'value' WHERE filter condition
-- 6. update the designation as Data Engineer whose name is 'Disk Smith'
-- if run this command directly you may get an error, first turn og tthe SAFE_MODE
SET SQL_SAFE_UPDATES = 0;
update employee_0705 set designation = 'Data Engineer' where emp_name = 'Disk Smith';

select * from employee_0705 where emp_name = 'disk smith';


-- 7. update the multiple columns 
UPDATE employee_0705 set designation = 'Data Scientist', age = 32 
where emp_name = 'kalki';
select * from employee_0705;

select * from employee_0705 where emp_name = 'seenu';

-- 8. increase the age of venala to one year
update employee_0705 set age = age + 1
where emp_name = 'venala';

select * from employee_0705 where emp_name = 'venala';

-- 9. Everyone that's making under 30000 are to receive a 3500 a year raise
select * from employee_0705;

update employee_0705 set salary = salary + 3500 
where salary < 30000;

select * from employee_0705;

-- 10. Everyone that's making over 33500 are to receive a 4500 a year raise
select * from employee_0705;

update employee_0705 set salary = salary + 4500 
where salary > 33500;

select * from employee_0705;

-- 11. All "Progemmer" titles are now promoted to "Programmer II"
update employee_0705 set designation = 'Programmer II' 
where designation = 'Programmer';

select * from employee_0705;

-- DML -> 3. DELETE
-- syntax: DELETE from table_name WHERE filter_condition
-- 11. DELETE the records whoes designation is "Programmer II"
delete from employee_0705 where designation = 'Programmer II';

select * from employee_0705;
