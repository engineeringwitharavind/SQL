-- Joins - B --

-- 1 --
select h.employeeid,h.firstname+' '+h.lastname emp_name 
from humanresources.vemployee h 
join sales.salesperson s on h.employeeid = s.salespersonid
where s.bonus = 2000

-- 2 --
select h.addressline1,h.city,isnull(h.addressline2,'N/A') addressline2,h.stateprovincename,h.postalcode,h.countryregionname 
from humanresources.vemployee h join person.stateprovince p on p.name=h.stateprovincename
where p.stateprovincecode='CA'

-- 3 --
select p.name,s.salesorderid from production.product p 
left join sales.salesorderdetail s on p.productid = s.productid

-- 4 --
select p.productsubcategoryid from production.product p
join production.productsubcategory ps 
on p.productsubcategoryid = ps.productsubcategoryid
where listprice < 15 
group by p.productsubcategoryid
having count(distinct(listprice)) >= 2

-- 5 --
--A--
select e.employeeid,e.firstname,e1.managerid,e2.firstname manager_name 
from humanresources.vemployee e  
join humanresources.employee e1  on e.employeeid = e1.employeeid
join humanresources.vemployee e2  on e1.managerid = e2.employeeid
  
--B--
select e.employeeid,e.firstname,e1.managerid 
from humanresources.vemployee e 
join humanresources.employee e1 on e.employeeid = e1.employeeid
where e1.managerid is null

-- 6 --
--A--
select p.name product_name,v.name vendor_name from production.productsubcategory p
join production.product p1 on p.productsubcategoryid = p1.productsubcategoryid
join purchasing.productvendor pv on p1.productid = pv.productid
join purchasing.vendor v on pv.vendorid = v.vendorid 
where p.productsubcategoryid =15

--B--
select s.name product_name,p.productid product_id,count(*) vendor_count from purchasing.productvendor p 
join production.product s on s.productid = p.productid
group by s.name,p.productid
having count(p.vendorid) > 1

-- 7 --
-- Find All customers who do not belong to any store
-- Solution yet to complete

-- 8 --
select p.name,s.unitprice from production.product p join sales.salesorderdetail s
on p.productid = s.productid
where p.productid = 718
and s.unitprice < p.listprice
group by p.name,s.unitprice

-- 9 --
select p.productid,p.name,(s.orderqty * s.unitprice) 'sales',s1.shipdate 'year'
from production.product p 
join sales.salesorderdetail s on s.productid = p.productid
join sales.salesorderheader s1 on s1.salesorderid = s.salesorderid
where shipdate between '2001/01/01' and '2001/12/31'  

