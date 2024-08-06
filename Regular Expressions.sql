use intro_sql;

select * from people_0724;

-- 1. selects the data where email starts with letter 'p'
select 	`first name`, `last name`, sex,email from people_0724
where email like 'p%';

-- 2. selects the data where email ends with letter '.com'
select 	`first name`, `last name`, sex,email from people_0724
where email like '%.com';

-- Regular Expressions

-- 1. Match beginning of string(^): Gives all the emails starting with ‘a’.Example- sam,samarth.
select 	`first name`, `last name`, sex,email from people_0724
where email REGEXP '^a';

-- 2. Match the end of a string($): Gives all the emails ending with ‘.org’.Example – pwarner@example.org.
select `first name`, `last name`, email from people_0724
where email REGEXP '.org$';

select `first name`, `last name`, email from people_0724
where email REGEXP '.org$'
order by `first name` ASC, email DESC
limit 20;


-- 3. Match zero or one instance of the strings preceding it(?): 
-- Gives all the titles containing ‘com’.Example – comedy , romantic comedy.

select `first name`, `last name`, email from people_0724
where email REGEXP 'com?'
order by `first name` ASC
limit 20;

-- 4. matches any of the patterns p1, p2, or p3(p1|p2|p3): 
-- Gives all the email containing ‘.org’ or ‘.com’.Example – pettylevi@example.org, vanessacox@example.com.
select `first name`, `last name`, email from people_0724
where email REGEXP '.org|.com'
order by `first name` ASC;

-- 5. Matches any character listed between the square brackets([abc]):
-- Gives all the names containing ‘x’,'y',' or ‘z’.Example – sonya26@example.com,pfrye@example.org, etc
select `first name`, `last name`, email from people_0724
where email REGEXP '[xyz]'
order by `first name` DESC
limit 2,4;


-- 6. Matches any lower case letter between ‘a’ to ‘z’- ([a-z]) ([a-z] and (.))
select `first name`, `last name`, email from people_0724
where `first name` REGEXP '[a-g][k-s]'
order by `first name` DESC
limit 15;

-- 7. Matches any character not listed between the square brackets.([^abc]):
-- Gives all the first names not containing ‘k-s'. Example – nerton, sewall.

select `first name`, `last name`, email from people_0724
where `first name` REGEXP '^[^k-s]*$'
order by `first name` DESC;

-- Gives all the first names not containing ‘k' or 's' or 'i'. Example – nerton, sewall.

select `first name`, `last name`, email from people_0724
where `first name` REGEXP '^[^kiss]*$'
order by `first name` DESC;


-- 8. Matches the end of words[[:>:]]: Gives all the titles ending with character “ack”. Example – Black.
select `first name`, `last name`, email from people_0724
where email REGEXP 'com[[:>:]]'
order by `first name` DESC;

-- 9. Matches the beginning of words[[:<:]]: Gives all the titles starting with character “for”. Example – Forgetting Sarah Marshal.
select `first name`, `last name`, email from people_0724
where email REGEXP '[[:<:]]';