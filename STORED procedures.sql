## STORED PROCEDURES

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
    SELECT *
	FROM employee_salary
	WHERE salary >= 10000
;
END $$
DELIMITER ;
call large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries4(employee_id INT)
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
END $$
DELIMITER ;

CALL large_salaries4(1)


