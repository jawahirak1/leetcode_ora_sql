Create table Trips (Id int, Client_Id int, Driver_Id int, City_Id int, Status varchar2(100)
, Request_at varchar(50));
COMMENT ON COLUMN Trips.Status 
   IS 'ENUM(completed, cancelled_by_driver, cancelled_by_client)';
Create table Users (Users_Id int, Banned varchar(50), Role varchar2(100));
COMMENT ON COLUMN Users.Role
IS 'ENUM(client, driver, partner)';
Truncate table Trips;
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('1', '1', '10', '1', 'completed', to_date('2013-10-01','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('2', '2', '11', '1', 'cancelled_by_driver', to_date('2013-10-01','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('3', '3', '12', '6', 'completed', to_date('2013-10-01','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('4', '4', '13', '6', 'cancelled_by_client', to_date('2013-10-01','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('5', '1', '10', '1', 'completed', to_date('2013-10-02','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('6', '2', '11', '6', 'completed', to_date('2013-10-02','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('7', '3', '12', '6', 'completed', to_date('2013-10-02','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('8', '2', '12', '12', 'completed', to_date('2013-10-03','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('9', '3', '10', '12', 'completed', to_date('2013-10-03','YYYY-MM-DD'));
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('10', '4', '13', '12', 'cancelled_by_driver', to_date('2013-10-03','YYYY-MM-DD'));
Truncate table Users;
insert into Users (Users_Id, Banned, Role) values ('1', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('2', 'Yes', 'client');
insert into Users (Users_Id, Banned, Role) values ('3', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('4', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('10', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('11', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('12', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('13', 'No', 'driver');
