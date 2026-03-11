#String Functions

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
Order by 2;

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;


#Trim left and right trim
SELECT TRIM('        sky        ')
;

SELECT LTRIM('        sky        ')
;

SELECT RTRIM('        sky        ')
;

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4) AS subRight,
substring(first_name, 3,2) AS Substring_function,
SUBSTRING(birth_date,6,2) AS Birth_month
FROM employee_demographics
;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('x', 'ALEXANDER');

