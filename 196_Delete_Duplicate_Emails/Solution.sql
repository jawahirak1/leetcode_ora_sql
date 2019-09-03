delete from person 
where id in (select p.id
from Person p
where p.id not in  (select min(p1.id) from Person p1 where p1.email = p.email))
