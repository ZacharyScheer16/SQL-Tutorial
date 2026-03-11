#CTE's\

WITH CTE_Example AS
(
SELECT gender, AVG(salary) AVG_Sal, MAX(salary) MAX_Sal, MIN(salary) Min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP By gender
)
SELECT AVG(AVG_Sal)
FROM CTE_example
;



SELECT AVG(AVG_Sal
FROM(SELECT gender, AVG(salary) AVG_Sal, MAX(salary) MAX_Sal, MIN(salary) Min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP By gender
)
SELECT AVG(AVG_Sal)
FROM CTE_example
;
