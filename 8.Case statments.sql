-- CASE STATMENT --

select first_name,
last_name
from employee_demographics
where age > 40;

select first_name,
last_name,
case
	when age <= 30 then 'Young'
    when age between 30 and 50 then 'Old'
    when age > 50 then 'Very Old'
end age_bracket
from employee_demographics
;

-- EXAMBLE PAY INCREASE AND BOUNS --
-- < 50000 = 5%
-- > 50000 = 7%
-- FINANCE = 10%

select *,
case
	when salary < 50000 then 1.05 * salary
    when salary >= 50000 then 1.07 * salary
    # when dept_id = 6 then 1.1 * salary -- Wrong make it based on salary should make new case --
end new_salary,
case 
	when dept_id = 6 then 0.1 * salary
end bouns
from employee_salary
;