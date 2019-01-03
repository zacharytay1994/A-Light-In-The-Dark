if instance_exists(obj_firefly_player)
{
	target_ = obj_firefly_player
	color_ = c_yellow
	if intensity_ > 0.1
	{
		intensity_ -= 0.001
	}
}
else
{
	target_ = obj_player_body
	color_ = c_black
	intensity_ = 1
}