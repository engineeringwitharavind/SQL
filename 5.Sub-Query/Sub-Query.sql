-- Sub-query --

-- 1 --
select first_name,hire_date
from employees  where department_id =
(
select department_id from departments  
where department_name = 'Sales'
) 

-- 2 --
select employee_id,last_name from employees 
where salary >
(
select avg(salary) from employees
)
order by salary

-- 3 --
select employee_id,last_name 
from employees where department_id in
(
select department_id from employees  
where last_name like '%u%'
)

-- 4 (join/sub-query)
select e.last_name,e.department_id,e.job_id 
from employees e 
where e.department_id =
(
select d.department_id from departments d
join locations l on d.location_id = l.location_id
where l.location_id ='1400'
)

-- 4 (sub-query)
select e.last_name ,e.department_id,e.job_id from employees e 
join departments d on e.department_id = d.department_id
where d.department_id in
(
select d.department_id from departments d 
join locations l on d.location_id = l.location_id
where l.location_id in
(
select l.location_id from locations l
join countries c on l.country_id = c.country_id 
where c.country_id = 'US'
) 
)

-- 5 --
select last_name,salary from employees 
where manager_id in
(
select employee_id from employees where first_name = 'Neena'
)

-- 6 -- (join/subquery)

select e.last_name,e.job_id,e.department_id from employees e
join departments d on e.department_id = d.department_id
where d.department_id in
(
select d.department_id from departments d
where d.department_name = 'Operations'
)

-- 6 -- (subquery)
select e.last_name,e.job_id,e.department_id from employees e
where e.department_id in
(
select d.department_id from departments d
where d.department_name = 'Operations'
)

-- 7 --
select employee_id,last_name,salary from employees 
where salary >
(select avg(salary) from employees)and
last_name like '%u%'

-- 8 --
select e.first_name from employees e where e.department_id in
(
select d.department_id from departments d where d.department_name ='Sales'
)


-- 9 --
select employee_id,salary,
case 
when department_id=10 or department_id=30 then '5%'
when department_id=20 or department_id=40 or department_id=50 then '10%'
else convert(varchar,salary)
end 
raise_percentage 
from employees 

-- 10 --
select last_name top_3_earners,salary from employees where salary in
(
select top 3  salary from employees
)

-- 11 --
select last_name,salary,isnull(commission_pct,0) as commission from employees

-- 12 --
select top 3 m.last_name manager_name,m.salary,d.department_name 
from employees e
join employees m 
on m.employee_id = e.employee_id
join departments d
on e.department_id = d.department_id

