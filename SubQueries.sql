# Sub QUeries
SELECT *
FROM employee_demographics
;
SELECT *
FROM employee_demographics
WHERE employee_id IN (
		SELECT employee_id
			FROM employee_salary
            WHERE dept_id = 1
)
;


SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary
)
FROM employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM employee_demographics
group by gender
;

SELECT *
FROM
(SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM employee_demographics
group by gender) as AGG_table;