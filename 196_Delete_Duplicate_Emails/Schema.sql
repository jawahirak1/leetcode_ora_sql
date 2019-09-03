/*
+----+------------------+
| Id | Email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+

*/

create table Person (id number, email varchar2(100));
insert into Person values (1,'john@example.com');
insert into Person values (2,'john1@example.com');
insert into Person values (3,'john@example.com');
