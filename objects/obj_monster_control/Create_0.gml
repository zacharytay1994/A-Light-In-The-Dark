var xx = room_width div CELL_DIMENSION
var yy = room_height div CELL_DIMENSION

var _collision_layer_id = layer_tilemap_get_id("Collision")

pathing_grid_ = mp_grid_create(0, 0, xx, yy, CELL_DIMENSION, CELL_DIMENSION)

for (var _x = 0; _x < xx; _x++)
{
	for (var _y = 0; _y < yy; _y++)
	{
		if tilemap_get(_collision_layer_id, _x, _y) != 0
		{
			mp_grid_add_cell(pathing_grid_, _x, _y)
		}
	}
}