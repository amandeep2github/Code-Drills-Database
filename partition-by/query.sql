select
	player_name ,
	score
from
	(
	select
		player_name,
		score,
		row_number() over(partition by player_type order by score desc) rn
	from
		score) tab
where
	rn = 1;