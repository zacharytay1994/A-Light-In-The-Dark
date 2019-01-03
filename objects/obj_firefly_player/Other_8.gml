var xx = x+irandom_range(-200, 200)
var yy = y+irandom_range(-200, 200)
s_creature_path_to_point(xx, yy, path_, 1, true)
while (!check_)
{
	var xx = x+irandom_range(-200, 200)
	var yy = y+irandom_range(-200, 200)
	s_creature_path_to_point(xx, yy, path_, 1, true)
}