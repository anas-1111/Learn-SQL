-- UNIONS --

select first_name,
last_name
from employee_demographics
union all
select first_name,
last_name
from employee_salary
;

select first_name,
last_name
, 'Old' label
from employee_demographics
where age > 50
union
select first_name,
last_name,
'Highly paid' label
from employee_salary
where salary > 70000
;

select first_name,
last_name
, 'Old Man' label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name,
last_name
, 'Old Woman' label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name,
last_name,
'Highly paid' label
from employee_salary
where salary > 70000
order by first_name
;