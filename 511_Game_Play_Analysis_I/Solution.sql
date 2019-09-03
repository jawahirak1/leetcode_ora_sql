select distinct player_id as "player_id"
, to_char(min (event_date) over (partition by player_id), 'yyyy-mm-dd') as "first_login"
from activity
