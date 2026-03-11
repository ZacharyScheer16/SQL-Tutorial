#CASE

SELECT first_name, last_name, age,
Case
	WHEN age<= 30 THEN 'YOUNG'
    WHEN age between 31 and 50 THEN 'old'
    WHEN age >= 50 THEN 'GOODNIGHT'
END AS age_chart
FROM employee_demographics
;

#Pay increase and Bonus
# < 50000 = 5% bonus
#> 50000 = 7%
# if FINANCE = 10% bonus

SELECT first_name,last_name, salary, 
CASE
	WHEN salary < 50000 THEN salary + (.05 * salary)
    WHEN salary > 50000 THEN salary + (.07 * salary)
    WHEN dept_id = 6 THEN salary * 1.10
END as Bonus_Salary
FROM employee_salary
;

select*
from parks_departments