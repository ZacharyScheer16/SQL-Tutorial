#WINDOW FUNCTIONS

SELECT gender, AVG(salary) as AVG_SALARY
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

SELECT gender, AVG(salary) OVER(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;



SELECT dem.first_name, dem.last_name, SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS ROLLING_TOTAL
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name, dem.last_name, salary,
row_number()OVER(partition by gender ORDER BY salary DESC) AS rowNum,
RANK()OVER(partition by gender ORDER BY salary DESC) as RANK_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

