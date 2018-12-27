if lightson_ = true
{
	lightson_ = false
	light_instance_.lightson_ = false
}
else
{
	lightson_ = true
	light_instance_.lightson_ = true
}

if flicker_ == true && flicker_counter_ < irandom(6)
{
	flicker_counter_ ++
	alarm[0] = room_speed / 10
}
else if flicker_times_ < 6
{
	flicker_counter_ = 0
	flicker_times_ ++
	lightson_ = false
	light_instance_.lightson_ = false
	alarm[0] = room_speed / 3
}
else
{
	flicker_counter_ = 0
	flicker_times_ = 0
	lightson_ = false
	light_instance_.lightson_ = false
}