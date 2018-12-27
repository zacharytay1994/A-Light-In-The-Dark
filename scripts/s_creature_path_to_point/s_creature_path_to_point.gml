/// path_to_point(x, y)
var _x = (argument0 div CELL_DIMENSION)*CELL_DIMENSION+CELL_DIMENSION/2
var _y = (argument1 div CELL_DIMENSION)*CELL_DIMENSION+CELL_DIMENSION/2
var _path = argument2
var _speed = argument3
check_ = false
if _x != x || _y != y
{
	if (mp_grid_path(obj_monster_control.pathing_grid_, _path, x, y, _x, _y, false))
	{
		path_start(_path, _speed, path_action_stop, false)
		check_ = true
	}
}

return check_;