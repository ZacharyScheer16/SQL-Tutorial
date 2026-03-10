#Where Clause

select *
from parks_and_recreation.employee_salary
WHERE salary > 50000
#WHERE first_name = "Leslie"
;

select * 
from employee_demographics
where birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

#like statement
#% -anything    and _ means specific
Select *
from employee_demographics
WHERE first_name like 'Jer%'
;

Select *
from employee_demographics
WHERE first_name like 'a%'
;


# ___________________
Select *
from employee_demographics
WHERE first_name like 'a_%';

#like statement
#% -anything    and _ means specific
Select *
from employee_demographics
WHERE birth_date like '1989%'
;

Select *
from employee_demographics
WHERE first_name like 'a%'
;
