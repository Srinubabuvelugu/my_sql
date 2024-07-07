-- use intro_sql database
use intro_sql

-- Creating the table 
create table empinfo_0704
(
first_name varchar(50),
last_name varchar(50),
id int not null,
age int,
city varchar(30),
state varchar(30),
PRIMARY KEY (id)
);

-- checking the table created or not4
show tables
-- selecting the all data in the table 
select * from empinfo_0704;

-- indterting the values into table 
INSERT into empinfo_0704 values('srinu', 'babu', 99048, 24,'prakasam','AP');
INSERT into empinfo_0704 values('babu', 'srinu', 99043, 23,'prakasam','AP');
INSERT into empinfo_0704 values('vennela', 'roy', 99042, 22,'guntur','AP');
INSERT into empinfo_0704 values('jivana', 'rosi', 99041, 26,'hyderabad','TG');
INSERT into empinfo_0704 values('raya', 'salar', 99040, 28,'hyderabad','TG');
INSERT into empinfo_0704 values('kyara', 'kalki', 99047, 27,'vizag','AP');
INSERT into empinfo_0704 values('sumathi', 'kalki', 99046, 25,'prakasam','AP');

-- selecting the total table data
select * from empinfo_0704;

-- selecting the id, first_name and last_nams
select id, first_name, last_name from empinfo_0704;

-- count the how may records
select COUNT(*) from empinfo_0704;

select COUNT(id) from empinfo_0704;
## here counting the total nuber of rows and column name as total_rows
select COUNT(id) as total_rows from empinfo_0704;

select id, first_name as FIRSTNAME , last_name as LASTNAME from empinfo_0704;

-- some filter operations using where condition

-- 1. Selection the data where age is grater then 25
select * from empinfo_0704
where age > 25;

-- 2. the data where age = 22
select * from empinfo_0704
where age = 22;

-- 3. selecting the data those who were age is 22,24,25 using 'or' operator
select * from empinfo_0704
where age=22 or age=24 or age=25;

-- 4. selecting the data those who were age is 22,24,25 using 'in' operator
select * from empinfo_0704
where age in (22,24,25);

-- 5. selecting the data who's first_name starts with 's' or 'S' using like operator
select * from empinfo_0704
where first_name like 's%';

-- 6. selecting the data who's first_name ends with 'a' or 'A' using like operator
select * from empinfo_0704
where first_name like '%A';

-- 7. select data those who's city is hyderabad and age > 24 
select * from empinfo_0704
where city = 'hyderabad' and age > 24;

-- 8. select state is 'AP' and last_name starts with 'S'
select * from empinfo_0704
where last_name like 's%' and state = 'AP';

select * from empinfo_0704
where last_name like 's%' and state like 'AP';

-- 9.get the data where age in between 24 to 26
select * from empinfo_0704
where age > 24 and 26 >= age;



-- 10. slect the data who's city contains 't'
select * from empinfo_0704
where city like '%t%';