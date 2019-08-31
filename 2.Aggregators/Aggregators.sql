-- Aggregators --

-- 1 --
select max(salary) max_sal, min(salary) min_sal, avg(salary) avg_sal,sum(commission_pct) total_comm
from hr.dbo.employees 

-- 2 --
select department_id,sum(salary) total_salary,sum(commission_pct) total_comm from employees group by department_id

-- 3 --
select department_id, count(employee_id) from employees group by department_id

-- 4 --
select department_id, sum(salary) total_salary from employees group by department_id

-- 5 --
select first_name from employees where commission_pct is null order by 1

-- 6 --
select first_name,department_id,
case 
when convert(varchar,commission_pct) is null then 'No Commission'
else convert(varchar,commission_pct)
end
commission  
from employees  

-- 7 --
select first_name,department_id,
case 
when convert(varchar,commission_pct) is null then 'No Commission'
else convert(varchar,commission_pct*2)
end
commission  
from employees

-- 8 --
select e.first_name,e.department_id 
from employees e
where e.first_name in
(
select e.first_name from employees e
group by e.first_name,e.department_id
having count(1)>1
) and e.department_id in
(
select e.department_id from employees e
group by e.first_name,e.department_id
having count(1)>1
)


-- 9 --
select sum(salary) sum_salary from employees group by manager_id

-- 10 --
select m.last_name manager_name,m.department_id,count(e.employee_id) emp_count
from employees e
join employees m on m.employee_id = e.manager_id
group by m.last_name,m.department_id

-- 11 --
select e.last_name employee_name,e.department_id,e.salary
from employees e 
join employees m on e.employee_id = m.employee_id
where e.last_name like '_a%'
group by e.last_name,e.department_id,e.salary

-- 12 --
select avg(salary) sum_sal from employees group by department_id order by department_id

-- 13 --
select department_id,max(salary) max_sal from employees group by department_id

-- 14 --
select
case 
when commission_pct is null then '1'
else (salary*10/100)
end
commission 
from employees 