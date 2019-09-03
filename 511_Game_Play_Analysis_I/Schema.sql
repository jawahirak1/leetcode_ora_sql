Create table Activity (player_id int, device_id int, event_date date, games_played int);
Truncate table Activity;
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', to_date('2016-03-01','YYYY-MM-DD'), '5');
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', to_date('2016-05-02','YYYY-MM-DD'), '6');
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', to_date('2017-06-25','YYYY-MM-DD'), '1');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', to_date('2016-03-02','YYYY-MM-DD'), '0');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', to_date('2018-07-03','YYYY-MM-DD'), '5');
