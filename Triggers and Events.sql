#Triggers and events

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
	FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, laast_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$employee_insert
Delimiter ;

# EVENTS
SELECT *
FROM employee_demographics
;

DELIMITER $$

CREATE EVENT delete_retires
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
	DELETE 
	FROM employee_demographics
    WHERE age >= 60;
END $$

DELIMITER ;