-- JOIN --
select *
from employee_salary
;

select *
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.employee_id, dem.first_name, dem.last_name, dem.age, sal.occupation, sal.salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


select *
from employee_salary as sal
right outer join employee_demographics as dem
	on dem.employee_id = sal.employee_id
;

-- SELF JOIN --

select emp1.employee_id santa_id,
emp1.first_name f_santa,
emp1.last_name l_santa,
emp2.employee_id,
emp2.first_name,
emp2.last_name
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 2 = emp2.employee_id
;


-- JOIN MULTIPLE TABLES TOGETHER --

select *
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
join parks_departments pd
	on pd.department_id = sal.dept_id
;

select * 
from parks_departments
;