-- TEMPORARY TABLES --

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
fav_mov varchar(100)
);

select * 
from temp_table;

insert into temp_table
values('Anas', 'Ibrahim', 'The God Father');

select * 
from temp_table;

create temporary table sal_lower_50000
(select *
from employee_salary
where salary < 50000);

select * 
from sal_lower_50000;