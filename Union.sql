#UNION

Select age, gender
From employee_demographics
UNION
Select first_name, last_name
From employee_salary
;


Select first_name, last_name, 'Old' AS Label
From employee_demographics
where age > 40 AND gender = 'MALE' OR gender = 'Female'
UNION
Select first_name, last_name, 'Highly Paid Employee' as Label
From employee_salary
where salary > 70000
Order By first_name, last_name
;