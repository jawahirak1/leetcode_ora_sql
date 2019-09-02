-- 
-- Author: Jawahir Kasim
--
with cte_secondHighest as 
(select decode(a1.rank1, 2, a1.salary, NULL) salarySub 
FROM 
(select salary, rank() over (order by salary desc) rank1 from employee)a1 
order by salarySub)
select salarySub as "SecondHighestSalary"
from cte_secondHighest 
where rownum = 1
