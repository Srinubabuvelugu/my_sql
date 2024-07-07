use Intro_SQL
-- Student --> id, name, age, gender, location
create table Students
(
student_id int,
student_name varchar(50),
age int,
gender varchar(1),
location varchar(100)
)
select  * from Students

INSERT into Students values (1, "Srinu", 24, "M", "AP")
INSERT into Students values (2, "Babu", 25, "M", "TS")
INSERT into Students values (3, "Vennela", 23, "F", "TS")
INSERT into Students values (4, "", 24, "F", "AP")
select  * from Students

create table stud_without_null
(
student_id int,
student_name varchar(50) not null,
age int,
gender varchar(1),
location varchar(100)
)
select  * from stud_without_null

INSERT into stud_without_null values (2, "Babu", 25, "M", "TS")
INSERT into stud_without_null values (3, "Vennela", 23, "F", "TS")

select  * from stud_without_null
INSERT into stud_without_null values (4, null, 24, "F", "AP")