if open_ = true
{
	open_ = false
	tilemap_set(door_layer_id_, 1, x div CELL_DIMENSION, y div CELL_DIMENSION)
	tilemap_set(collision_layer_id_, 1, x div CELL_DIMENSION, y div CELL_DIMENSION)
	light_instance_.lights_on_ = false
}
else
{
	open_ = true
	tilemap_set(door_layer_id_, 0, x div CELL_DIMENSION, y div CELL_DIMENSION)
	tilemap_set(collision_layer_id_, 0, x div CELL_DIMENSION, y div CELL_DIMENSION)
	light_instance_.lights_on_ = true
}