event_inherited()

path_ = path_add()
tilemap_control_check_ = layer_tilemap_get_id("ControlCheck")
tilemap_control_rmPos_ = layer_tilemap_get_id("RoomPosition")
alarm[0] = room_speed

// Generating Points
coords_array_[0, 0] = 46 // Point One
coords_array_[0, 1] = 66
coords_array_[1, 0] = 36 // Point Two
coords_array_[1, 1] = 66
coords_array_[2, 0] = 38 // Point Three
coords_array_[2, 1] = 54
coords_array_[3, 0] = 49 // Point Four
coords_array_[3, 1] = 56
coords_array_[4, 0] = 80 // Point Five
coords_array_[4, 1] = 66
coords_array_[5, 0] = 68 // Point Six
coords_array_[5, 1] = 66

switch_dest_ = 0
// Monster One States
enum states
{
	play,
	looking,
	stalking,
	chasing
}

state_ = states.play