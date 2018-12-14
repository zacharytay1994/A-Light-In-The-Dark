var _grid = argument0
var _controller_x = argument1
var _controller_y = argument2
var _tile_layer = argument3
var _room_height = argument4
var _room_width = argument5

var _j = 0
var _i = 0
repeat(argument4)
{
	for (_i = 0; _i<argument5; _i++)
	{
		_grid[# _controller_x + _i, _controller_y + _j] = FLOOR
		tilemap_set(_tile_layer, 1, _controller_x + _i, _controller_y + _j)
	
	}
	_i = 0;
	_j++
}