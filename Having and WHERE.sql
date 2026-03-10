#Having vs where

Select gender, AVG(age)
FROM employee_demographics
GROUP by gender
HAVING AVG(age) > 40
;

Select occupation, AVG(salary)
from employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
Having Avg(salary) > 75000