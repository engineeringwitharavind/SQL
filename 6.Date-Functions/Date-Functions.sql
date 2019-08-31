-- Date-Functions --

set dateformat dmy

create table empdate
(
emp_id int,
hire_date date,
resignation_date date
)

insert into empdate values(1,'01/01/2000','07/10/2013')
insert into empdate values(2,'04/12/2003','03/08/2017')
insert into empdate values(3,'22/09/2012','21/06/2015')
insert into empdate values(4,'13/04/2015',null)
insert into empdate values(5,'03/06/2016',null)
insert into empdate values(6,'08/08/2017',null)
insert into empdate values(7,'13/11/2016',null)

drop table empdate
select * from empdate


-- 1 --
select convert(varchar(15),datediff(day,hire_date,resignation_date)/365)+
'years'+
convert(varchar(25),datediff(day,hire_date,resignation_date)%365/30)+ 'months'+
convert(varchar(15),datediff(day,hire_date,resignation_date)%365%30)+'days'
from empdate

-- 2 --
select convert(varchar,hire_date,101),isnull(convert(varchar,resignation_date,107),'DEC,01th
1900')
FROM empdate

-- 3 --
select convert(varchar(15),datediff(day,hire_date,getdate())/365)+ 'years'+
convert(varchar(25),datediff(month,hire_date,getdate())% 12)+ 'months'
as Total_Experience from empdate

-- 4 --
Select datediff(dd, dateadd(qq,datediff(qq,0, getdate())-1,0),dateadd(qq, datediff(qq,0, getdate()),0))

-- 5 --
select dateadd(week ,1,dateadd(qq,datediff(qq,0, getdate())-1,0))

-- 6 --
Select  dateadd(week,14,dateadd(qq,datediff(qq,0, getdate())+1,0))

-- 7 --
with date_with(weekdate)
as
(
select dateadd(week,4,dateadd(year,-4,dateadd(yy,datediff(yy,0,getdate()),2)))
)
select weekdate from date_with



