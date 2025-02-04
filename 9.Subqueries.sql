-- SUBQUERIES --

select * 
from employee_demographics
where employee_id in 
				(select employee_id 
					from employee_salary
					where dept_id = 1)
;

select *,
(select avg(salary)
from employee_salary) avg_salary
from employee_salary;


select gender,
avg(age),
max(age),
min(age),
count(age)
from (select gender, age
		from employee_demographics
        where employee_id in (select employee_id 
								from employee_salary 
                                where dept_id = 1)) as table_
group by gender ;


select gender, avg(max)
from 
(select gender,
avg(age) avg, 
max(age) max, 
min(age) min, 
count(age) count
from employee_demographics
group by gender) as agg_table
group by gender
;