-- Strings --

-- 1 --
select upper(substring(last_name,2,1))+substring(last_name,3,3) from hr.dbo.employees

-- 2 --
select (first_name+'-'+last_name) as Name,month(hire_date) from hr.dbo.employees

-- 3 --
select last_name,
case when (salary/2)>10000 then (salary+salary*(10/100)+1500)
else (salary+salary*(11.5/100)+1500) 
end
as bonus from hr.dbo.employees 

-- 4 --
select substring(convert(varchar,e.employee_id),1,2)+'00'
+substring(convert(varchar,e.employee_id),3,len(e.employee_id))+'-E',e.department_id,e.salary,
upper(replace(m.first_name+' '+m.last_name,'Z','$')) manager_name from hr.dbo.employees e join hr.dbo.employees m
on e.manager_id = m.employee_id

-- 5 --
select upper(substring(e.last_name,1,1))+substring(e.last_name,2,len(e.last_name)) last_name,
case when e.last_name like 'A%' or e.last_name like 'J%' or e.last_name like 'M%' then len(e.last_name)
else null
end
length_name from hr.dbo.employees e order by e.last_name

-- 6 --
select last_name,('$'+substring(convert(varchar,salary),1,15)) salary from hr.dbo.employees 

-- 7 --
select last_name from hr.dbo.employees
where last_name=reverse(last_name)

-- 8 --
select upper(substring(first_name,1,1))+substring(first_name,2,len(last_name)) first_name from hr.dbo.employees

-- 9 --
select left(substring(street_address,
charindex(' ',street_address)+1,len(street_address)),
charindex(' ',substring(street_address,
charindex(' ',street_address)+2,len(street_address))))
from locations


-- 10 --
select first_name,lower(substring(first_name,1,1)+last_name+'@systechusa.com') as email_address from hr.dbo.employees

-- 11 --
select e.first_name,j.job_title from hr.dbo.employees e join hr.dbo.jobs j on e.job_id = j.job_id
where j.job_title in 
(
select j.job_title from hr.dbo.employees e
join hr.dbo.jobs j on e.job_id = j.job_id where e.first_name = 'Trenna'
)

-- 12 --
select e.first_name,d.department_name from hr.dbo.employees e 
join hr.dbo.departments d on e.department_id = d.department_id
join hr.dbo.locations l on d.location_id = l.location_id 
where l.city in
(
select l.city from hr.dbo.employees e 
join hr.dbo.departments d on d.department_id = e.department_id
join hr.dbo.locations l on d.location_id = l.location_id 
where e.first_name = 'Trenna'
) 

-- 13 -- 
select first_name from hr.dbo.employees 
where salary in 
(select min(salary) from hr.dbo.employees)

-- 14 --
select first_name from hr.dbo.employees 
where salary not in 
(select min(salary) from hr.dbo.employees)
