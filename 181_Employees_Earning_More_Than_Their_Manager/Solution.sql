select emp.name as "Employee"
from Employee emp 
, Employee manager
where emp.managerid is not null 
and emp.managerid = manager.id
and manager.salary < emp.salary
