--
-- Autho:r: Jawahir Kasim
--
select d.Name as "Department"
, empranksal.Name as "Employee"
, empranksal.Salary as "Salary" 
from
(select id
, name
, salary
, rank () over (partition by departmentid order by salary desc) rank_by_dept
, departmentId 
from Employee) empranksal
, department d
where d.id = empranksal.departmentId
and empranksal.rank_by_dept = 1
