-- GROUP BY --
select occupation, salary
from employee_salary
group by occupation, salary
;

select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender
;

-- ORDER BY --

select *
from employee_demographics
order by gender, age desc
;

select *
from employee_demographics
order by 5, 4 desc
;

-- HAVING --

select gender, avg(age)
from employee_demographics
where age > 45
group by gender 
#having avg(age) > 40
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation 
having avg(salary) > 7500
;

-- LIMIT --

select *
from employee_demographics
#order by age desc
limit 0,5
;

-- ALIASING --

select gender, avg(age) avg_age -- = select gender, avg(age) as avg_age --
from employee_demographics
group by gender
having avg_age > 40
;