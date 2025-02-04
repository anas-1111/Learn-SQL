DELIMITER //

CREATE PROCEDURE InsertEmployeesal(
	IN p_id INT ,
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_occupation VARCHAR(50),
    IN p_salary INT,
    IN p_dept_id INT
)
BEGIN
    -- Insert data into the employees table
    INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
    VALUES (p_id, p_first_name, p_last_name, p_occupation, p_salary, p_dept_id);
END //

DELIMITER ;


call InsertEmployeesal(17, 'Moaaz', 'Ibrahim', 'RB', 20000, null);
call InsertEmployeesal(44, 'Anas', 'Ibrahim', 'CDM', 22000, 6);