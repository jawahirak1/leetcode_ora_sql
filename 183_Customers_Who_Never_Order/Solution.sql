--
-- Author: Jawahir Kasim
-- 
select Name as "Customers" 
from Customers 
where id not in (Select distinct customerid from orders)
