select p.FirstName "FirstName", p.LastName "LastName", a.City as "City", a.State as "State" 
from Person p, Address a
where p.PersonId = a.PersonId (+)
