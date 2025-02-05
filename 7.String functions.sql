-- STRING FUNCTIONS --

select length('Anas Ibrahim') len
;

select first_name,
length(first_name) len
from employee_salary
order by len
;

select upper('anas ibrahim');
select lower('SKY');

select first_name,
upper(first_name) upper
from employee_salary
order by upper
;

select rtrim('    Anas  ');


select left('Anas', 2)
union
select right('Anas', 2);

select first_name,
last_name,
substring(birth_date,6,2) Month
from employee_demographics;

select first_name, replace(first_name, 'a', ' ')
from employee_demographics;

select locate('a', 'Anas');

select first_name, locate('an', first_name)
from employee_demographics;

select first_name,
last_name,
concat(first_name, ' ', last_name) full_name
from employee_demographics;