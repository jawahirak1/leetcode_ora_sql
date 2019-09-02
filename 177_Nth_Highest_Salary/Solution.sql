CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    select aa1.salary
    into result
    from (select id, salary, dense_rank () over (order by salary desc) rank_emp 
from Employee)aa1
where rank_emp = N
and rownum = 1;
    RETURN result;
END;
