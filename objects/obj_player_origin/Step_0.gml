x = clamp(x, 128, room_width-160);
y = clamp(y, 128, room_height-160);

var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (_x_input == 1)
{
	if move_h == true
	{
		x += 32
		move_h = false
	}
}
else if (_x_input == -1)
{
	if move_h == true
	{
		x -= 32
		move_h = false
	}
}

if (_y_input == -1)
{
	if move_v == true
	{
		y-=32
		move_v = false
	}
}
else if (_y_input == 1)
{
	if move_v == true
	{
		y+=32
		move_v = false
	}
}