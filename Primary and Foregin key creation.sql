use intro_sql

create table deptment
(
dept_id int,
dept_name varchar(50),
dept_address varchar(100)
)

insert into deptment values(null, null, null)

select * from deptment

drop table deptment
-- stage 2
create table depertment
(
dept_id int not null,
dept_name varchar(50),
dept_address varchar(100),
PRIMARY KEY(dept_id)
)
insert into depertment values(null, null, null) -- tyou get an error: Error code 1048 Column dept_id cannot be null so,
INSERT INTO depertment values(1000, "ECE", "JNTUK")
INSERT INTO depertment values(2000, "CSE", "JNTUK")
SELECT * from depertment

-- table to creation
CREATE TABLE employee(
empid int,
empname varchar(50),
empaddress varchar(100),
deptid int,
PRIMARY KEY(empid),
FOREIGN KEY(deptid) REFERENCES depertment(dept_id)
)

INSERT INTO employee VALUES(1, "BABU", "HYD", 1000)
INSERT INTO employee VALUES(2, "Srinu", "HYD", 2000)
INSERT INTO employee VALUES(3, "SIVA", "HYD", 1000)

SELECT * FROM employee
