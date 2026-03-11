#CTE's\

WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CET_Example2 AS
(
SELECT *
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example
;

