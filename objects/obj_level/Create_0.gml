/// Creating room
randomize()


// Easy change variables
var _player_start_x = 50
var _player_start_y = 80

building_visible_ = 6
building_visible_clear_ = building_visible_ + 1

target_ = obj_player_body

in_building_bool_ = false
default_wall_ = 1
default_roof_ = 15
default_pillar_ = 14

// Map Generation
buildingaes_id_ = layer_tilemap_get_id("BuildingWallsAes")
roomboundary_id_ = layer_tilemap_get_id("RoomBoundary")
floor_id_ = layer_tilemap_get_id("Floor")

width_ = room_width div CELL_DIMENSION
height_ = room_height div CELL_DIMENSION
grid_ = ds_grid_create(width_, height_)
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID)

grid_path_ = mp_grid_create(0, 0, width_, height_,
CELL_DIMENSION, CELL_DIMENSION)

var _controller_x = 48
var _controller_y = 48

// Create control room
// Base floor generation

instance_create_layer(_player_start_x * CELL_DIMENSION,
_player_start_y * CELL_DIMENSION, "Instances", obj_player_origin)
instance_create_layer(_player_start_x * CELL_DIMENSION + 31,
_player_start_y * CELL_DIMENSION + 56, "PlayerBody", obj_player_body)
instance_create_layer(_player_start_x * CELL_DIMENSION + 31,
_player_start_y * CELL_DIMENSION + 56, "PlayerHead", obj_player_head)

for (var _y = 1; _y < height_-1; _y++)
{
	for (var _x = 1; _x < width_-1; _x++)
	{
		if (grid_[# _x, _y] == VOID)
		{
			mp_grid_add_cell(grid_path_, _x, _y)
		}
	}
}

// Defining Params
//instance_deactivate_object(obj_light_point)