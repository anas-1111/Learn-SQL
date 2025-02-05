-- CTEs --
with cte_ex (F_NAME, L_NAME, GENDER, SALARY, ROW_N, RANK_N, DENSE_RANK_N) as 
(
select dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() over(partition by gender order by salary desc) dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
)
select * 
from cte_ex;

# Can make it with this way although but CTEs way more professional

select * 
from 
(select dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() over(partition by gender order by salary desc) dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id) ex_sub; 
    
    
with cte_ex as
(select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'),
cte_ex2 as
(select employee_id, salary
from employee_salary
where salary > 50000)
select * 
from cte_ex
join cte_ex2
	on cte_ex.employee_id = cte_ex2.employee_id