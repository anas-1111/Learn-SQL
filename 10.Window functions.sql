-- WINDOW FUNCTIONS --

select gender, avg(salary) over()
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
#group by gender
;

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender) avg_salary
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
#group by gender
;


select dem.first_name, dem.last_name, gender, salary, avg(salary) over(partition by gender order by dem.employee_id) rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


select dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() over(partition by gender order by salary desc) dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;