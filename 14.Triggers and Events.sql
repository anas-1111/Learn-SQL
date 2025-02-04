-- TRIGGERS AND EVENTS --

-- TRIGGERS --

select *
from employee_demographics;

select *
from employee_salary;


delimiter //
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end //
delimiter ;

call InsertEmployeesal(24, 'Karim', 'Benzema', 'CEO', 1000000, 1);

-- EVENTS --

select * 
from employee_demographics;

delimiter $$
create event delete_retirees 
on schedule every 30 second
do
begin
	delete 
    from employee_demographics
    where age >= 45 ;
end $$
delimiter ;

show variables ;

select * 
from employee_demographics
where age >= 45 ;