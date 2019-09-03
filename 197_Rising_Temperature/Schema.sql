Create table Weather (Id int, RecordDate date, Temperature int);
Truncate table Weather;
insert into Weather (Id, RecordDate, Temperature) values ('1', to_date('2015-01-01', 'YYYY-MM-DD'), '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', TO_DATE('2015-01-02', 'YYYY-MM-DD'), '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', TO_DATE('2015-01-03', 'YYYY-MM-DD'), '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', TO_DATE('2015-01-04', 'YYYY-MM-DD'), '30');
