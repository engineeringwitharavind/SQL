
-- Basic Exercise --

-- 1 --
select * from hr.dbo.employees,hr.dbo.departments

-- 2 --
select (first_name+' '+last_name)as name , hire_date from hr.dbo.employees

-- 3 --
select (first_name+' '+last_name + ', ' + job_id)as Employee_and_Title from hr.dbo.employees

-- 4 --
select hire_date,(first_name+' '+last_name) as name ,department_id from hr.dbo.employees 
where job_id like '%clerk'

-- 5 -- 
select concat(employee_id,',',first_name,',',email,',', phone_number,',',hire_date,',',job_id) as Output from hr.dbo.employees

-- 6 --
select (first_name+' '+last_name)as name,salary from hr.dbo.employees where salary > 2000

-- 7 --
select (first_name+' '+last_name)as Name,hire_date Start_Date from hr.dbo.employees

-- 8 --
select (first_name+' '+last_name)as Name,hire_date from hr.dbo.employees order by hire_date

-- 9 --
select first_name,salary from hr.dbo.employees order by salary desc

-- 10 --
select first_name,department_id from hr.dbo.employees where commission_pct is not null order by salary desc

-- 11 --
select last_name,job_id from hr.dbo.employees where manager_id is null

-- 12 --
select e.last_name,j.job_title,
case 
when e.salary != 2500 then e.salary
when e.salary != 3500 then e.salary
when e.salary != 5000 then e.salary
end 
salary 
from hr.dbo.employees e join hr.dbo.jobs j on e.job_id = j.job_id 
where j.job_title like 'Sales Representative' or j.job_title like 'Stock Clerk'