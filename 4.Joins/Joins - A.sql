-- Joins - A --

-- 1 -- 
select e.last_name, d.department_id,d.department_name from employees e join departments d on e.department_id = d.department_id

-- 2 --
select j.job_title,l.city from locations l 
join departments d on l.location_id = d.location_id 
join employees e on e.department_id = d.department_id
join jobs j on j.job_id = e.job_id  where d.department_id = 40 

-- 3 --
select e.last_name,d.department_name,l.location_id,city from departments d
join employees e on e.department_id = d.department_id
join locations l on l.location_id = d.location_id
where e.commission_pct is not null 

-- 4 --
select e.last_name,d.department_name from employees e 
join departments d  on e.department_id = d.department_id
where e.last_name like '%a%'

-- 5 --
select e.last_name,j.job_id,d.department_id,d.department_name,region_id from employees e
join departments d on e.department_id = d.department_id
join jobs j on e.job_id = j.job_id 
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id
where region_id = 2

-- 6 --
select e.last_name employee_lastname,e.employee_id,m.last_name manager_lastname,m.employee_id from employees e 
join employees m on e.manager_id = m.employee_id 

-- 7 --
select e.last_name employee_lastname,e.employee_id,m.last_name manager_lastname,m.employee_id from employees e 
left outer join employees m on e.manager_id = m.employee_id 

-- 8 --
select last_name,department_id from employees
where department_id in 
(
select department_id from employees 
group by department_id
having count(department_id) > 1
)

-- 9 --
select e.last_name name,j.job_title job,d.department_name,e.salary ,
case 
when (e.salary)>=50000 then 'A'
when (e.salary)>=30000 then 'B'
else 'C'
end 
as grade
from hr.dbo.employees e 
join hr.dbo.departments d on e.department_id = d.department_id
join hr.dbo.jobs j on e.job_id = j.job_id

-- 10 --
select e.last_name Employee_name ,e.hire_date emp_hire_date,m.last_name manager_name,m.hire_date man_hire_date from employees e 
join employees m on e.manager_id = m.employee_id
where e.hire_date < m.hire_date
