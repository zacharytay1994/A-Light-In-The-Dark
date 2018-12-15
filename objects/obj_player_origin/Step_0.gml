x = clamp(x, 128, room_width-160);
y = clamp(y, 128, room_height-160);

var _x = x div CELL_DIMENSION
var _y = y div CELL_DIMENSION

var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (_x_input == 1)
{
	if move_h == true
	{
		if (tilemap_get_at_pixel(tilemap_, x + CELL_DIMENSION, y) == 0)
		{
			x += CELL_DIMENSION
		}
		move_h = false
	}
}
else if (_x_input == -1)
{
	if move_h == true
	{
		if (tilemap_get_at_pixel(tilemap_, x - CELL_DIMENSION, y) == 0)
		{
			x -= CELL_DIMENSION
		}
		move_h = false
	}
}

if (_y_input == -1)
{
	if move_v == true
	{
		if (tilemap_get_at_pixel(tilemap_, x, y - CELL_DIMENSION) == 0)
		{
			y -= CELL_DIMENSION
		}
		move_v = false
	}
}
else if (_y_input == 1)
{
	if move_v == true
	{
		if (tilemap_get_at_pixel(tilemap_, x, y + CELL_DIMENSION) == 0)
		{
			y += CELL_DIMENSION
		}
		move_v = false
	}
}