use classicmodels;

show tables;

SELECT * FROM employees;

-- store the female peoples in separate table as fallows
create table female_people as
select * from intro_sql.people_0724
where SEX = 'Female';

-- checking the female_people table result
select * from female_people;

-- creating  a new tables it will occupy the some space in memory
-- so, while comming to the views , it will not occupy extra space in memory
-- creating a viwe

create view male_people as
select * from intro_sql.people_0724
where Sex = 'male';

--  checking the view result table 
select * from male_people;

-- views are read only 
-- views are not specefy the which column is belongs to which table
 create view view_0801 as 
 select a.customerNumber, a.customerName, b.orderNumber, b.orderDate 
 from customers a
 INNER JOIN orders b
 WHERE a.customerNumber = b.customerNumber;
 
 select * from view_0801;
 