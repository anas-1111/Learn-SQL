-- STORED PROCEDURES --

select *
from employee_salary
where salary >= 60000;

create procedure high_sal()
select *
from employee_salary
where salary >= 60000;

call high_sal();

delimiter //
create procedure high_sal2()
begin
	select *
	from employee_salary
	where salary >= 60000;
	select *
	from employee_salary
	where salary >= 10000;
end //
delimiter ;

call high_sal2();


select *
from employee_demographics dem
join employee_salary sal
where gender = 'male'
and salary > 60000 
and dem.first_name = sal.first_name;

call men_high_paid(); # Create from GUI


DELIMITER //

CREATE PROCEDURE InsertEmployee(
	IN p_id INT ,
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_age INT,
    IN p_gender VARCHAR(10),
    IN p_birth_date DATE
)
BEGIN
    -- Insert data into the employees table
    INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
    VALUES (p_id, p_first_name, p_last_name, p_age, p_gender, p_birth_date);
END //

DELIMITER ;

call InsertEmployee(17, 'Moaaz', 'Ibrahim', 12, 'male', '2013-11-18');