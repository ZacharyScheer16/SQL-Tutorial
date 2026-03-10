#Limit and aliasing

Select * 
from employee_demographics
Limit 3
;


Select * 
from employee_demographics
Order by age DESC
Limit  3, 7
;

# Aliasing

Select gender , avg(age) AS avg_age
from employee_demographics
group by gender
Having avg_age > 40
;

