select *
from employee_salary
where salary > 50000
;


select *
from employee_demographics
where gender != 'female'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
;

-- AND, OR, NOT -- Logical Operator

select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male'
;

select *
from employee_demographics
where (first_name = 'Tom' 
and age = 36)
or age > 50
;

-- Like Statment --
select *
from employee_demographics
where first_name like 'a%' # Name is start with 'a'
;

select *
from employee_demographics
where birth_date like '1989%'
;