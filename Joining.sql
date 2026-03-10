#Joining

Select *
from employee_demographics
;


select *
From employee_salary
;

#Inner join   return rows same in both col
Select *
from employee_demographics dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

Select dem.employee_id, age, occupation
from employee_demographics dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


#Outer joins
Select *
from employee_demographics dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

##SELF JOIN
#Tying table to itself

Select  emp1.employee_id as emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as gift_for_id,
emp2.first_name AS gift_for_first_name,
emp2.last_name as gift_for_last_name

From employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


#Joining multiple tables together
Select *
from employee_demographics dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;
Select *
from parks_departments
