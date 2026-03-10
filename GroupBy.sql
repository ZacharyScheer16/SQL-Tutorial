## Group By 

Select *
From parks_and_recreation.employee_demographics;

Select gender
From parks_and_recreation.employee_demographics
group by gender;

Select gender, avg(age)
From parks_and_recreation.employee_demographics
group by gender;

Select occupation, salary
From parks_and_recreation.employee_salary
group by occupation, salary;

Select gender, AVG(age), max(age), min(age), count(age)
From parks_and_recreation.employee_demographics
group by gender;

##ORDER BY
Select*
From parks_and_recreation.employee_demographics
Order by gender, age DESC
;

#Column ID
Select*
From parks_and_recreation.employee_demographics
Order by 5, 4 DESC
;

