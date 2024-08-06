use intro_sql;

select * from people_0724;

-- 1. Datediff - returns the two dates difference in days
-- 2. from_days - it will convets the numeric days into date 
-- 3. curdate - it will gives the todays date

select `first name`, `last name`, curdate(), `Date of birth`, From_days(datediff(curdate(),`date of birth`)) as Date_difference from people_0724;

-- 4. date_format
-- Extract the Year from date
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%Y') Year_format from people_0724;
-- Extract the year of last two digits
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%y') Year_last_two_digits from people_0724;
-- extract the month in name
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%M') Month_name from people_0724;
-- extract the month in numeric
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%m') Month_number from people_0724;

select `first name`, `last name`,`Date of birth`, Month(`Date of birth`) Month_number from people_0724;



-- extract the day
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%d') day_format from people_0724;
select `first name`, `last name`,`Date of birth`, date_format(`Date of birth`,'%m') Month_number from people_0724;

-- 5. QUARTER 
select `first name`, `last name`,`Date of birth`, QUARTER(`Date of birth`) Quarter_no from people_0724;

-- 6.ADDDATE in days
select  `first name`, `last name`,`Date of birth`, ADDDATE(`Date of birth`,INTERVAL 10 DAY) ADDDATE_days from people_0724;

-- 7.ADDDATE in months
select  `first name`, `last name`,`Date of birth`, ADDDATE(`Date of birth`,INTERVAL 10 month) ADDDATE_months from people_0724;
-- 8.ADDDATE in years
select  `first name`, `last name`,`Date of birth`, ADDDATE(`Date of birth`,INTERVAL 10 year) ADDDATE_months from people_0724;


-- 8. Subtract date 
select  `first name`, `last name`,`Date of birth`, SUBDATE(`Date of birth`,INTERVAL 10 day) ADDDATE_months from people_0724;
select  `first name`, `last name`,`Date of birth`, ADDDATE(`Date of birth`,INTERVAL -10 day) ADDDATE_months from people_0724;


-- 9. DAYNAME - Return the week day name
select  `first name`, `last name`,`Date of birth`, DAYNAME(`Date of birth`) DAY_NAME from people_0724;

-- select the data the week day name is friday
select  `first name`, `last name`,`Date of birth`, DAYNAME(`Date of birth`) DAY_NAME from people_0724
having day_name = 'Friday';

-- 10. LAST_DAY - Extracts the last day of month
select  `first name`, `last name`,`Date of birth`, day(LAST_DAY(`Date of birth`)) lastday from people_0724;

-- selects the data which month contains 31 days
select  `first name`, `last name`,`Date of birth`, day(LAST_DAY(`Date of birth`)) lastday from people_0724
having lastday = 31;
select  `first name`, `last name`,`Date of birth` from people_0724
having day(LAST_DAY(`Date of birth`)) = 31;

-- 11. MONTHNAME - Return the month name in the form of characters
select  `first name`, `last name`,`Date of birth`, MONTHNAME(`Date of birth`) lastday from people_0724;

-- selects the data in which month is either Septmeber or July
select  `first name`, `last name`,`Date of birth`, MONTHNAME(`Date of birth`) month_name from people_0724
having month_name in ('July','September');
