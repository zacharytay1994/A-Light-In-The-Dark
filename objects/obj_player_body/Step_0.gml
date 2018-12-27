depth = DEPTH - (y-32) div CELL_DIMENSION

// Run or Walk track
if (keyboard_check(vk_shift))
{
	speed_ = 8
}
else
{
	speed_ = 4
}

if ((x < obj_player_origin.x + 22 && x > obj_player_origin.x + 10)
&& (y < obj_player_origin.y + 22 && y > obj_player_origin.y + 10))
{
	image_index = 0
	image_speed = 0
	speed = 0
}
else
{
	image_speed = 0.6
	move_towards_point(obj_player_origin.x + 16,
	obj_player_origin.y + 16, speed_)
}

var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (_x_input == 1)
{
	if move_h == true
	{
		camera_state_ = 1
		image_xscale = 1
		sprite_index = sprite_array[2]
		move_h = false
	}
}
else if (_x_input == -1)
{
	if move_h == true
	{
		camera_state_ = 2
		image_xscale = -1
		sprite_index = sprite_array[2]
		move_h = false
	}
}

if (_y_input == -1)
{
	if move_v == true
	{
		camera_state_ = 3
		sprite_index = sprite_array[1]
		move_v = false
	}
}
else if (_y_input == 1)
{
	if move_v == true
	{
		camera_state_ = 4
		sprite_index = sprite_array[0]
		move_v = false
	}
}

if (_x_input == 0 && _y_input == 0)
{
	camera_state_ = 0
}