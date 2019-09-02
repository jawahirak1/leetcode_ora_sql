----
-- Author : Jawahir Kasim
----
SELECT DISTINCT num as "ConsecutiveNums"
FROM
(
SELECT num,LEAD(num) OVER(ORDER BY id) AS lead, LAG(num) OVER (ORDER BY id) AS lag
FROM logs
)t
WHERE num=lead and num=lag
